module ApplicationHelper
  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end
  def markdown(content)
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true, # detects links and automatically detects a tags, parse links even when they are not enclosed in <> characters
      no_intra_emphasis: true, #do not parse emphasis inside of words
      disable_indented_code_blocks: true, # do not parse usual markdown code blocks
      fenced_code_blocks: true, # parse fenced code blocks, PHP-Markdown style.Blocks delimited with 3 or more ~ or backticks will be considered as code, without the need to be indented.
      lax_html_blocks:true, # HTML blocks do not require to be surrounded by an empty line as in the Markdown standard.
      strikethrough: true, # parse strikethrough, PHP-Markdown style. Two ~ characters mark the start of a strikethrough, e.g. this is ~~good~~ bad.
      superscript: true, # parse superscripts after the ^ character; contiguous superscripts are nested together, and complex values can be enclosed in parenthesis, e.g. this is the 2^(nd) time.
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
