-- {{< pub-links >}}: Link-Badges aus dem Front Matter (gleiche Felder wie pub-list.ejs.md)
return {
  ["pub-links"] = function(args, kwargs, meta)
    local function get(key)
      return meta[key] and pandoc.utils.stringify(meta[key]) or nil
    end
    local links = {}
    local function add(label, href, title)
      if #links > 0 then table.insert(links, pandoc.Space()) end
      table.insert(links, pandoc.Link(label, href, title or ""))
    end
    local doi, arxiv, url = get("doi"), get("arxiv"), get("url")
    if doi then add("DOI", "https://doi.org/" .. doi) end
    if arxiv then add("arXiv", "https://doi.org/10.48550/arXiv." .. arxiv) end
    if url then add(get("urlLabel") or "Link", url) end
    for _, f in ipairs({ { "pdf", "PDF" }, { "slides", "Slides" }, { "poster", "Poster" } }) do
      local v = get(f[1])
      if v then add(f[2], v) end
    end
    local sw = get("software")
    if sw then add("Software", "/software/" .. sw:lower() .. "/", sw .. " – R package") end
    return pandoc.Span(links, { class = "pub-links" })
  end
}
