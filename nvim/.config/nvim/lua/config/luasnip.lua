require("luasnip.loaders.from_vscode").lazy_load()
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet

ls.add_snippets("c", {
    s("stdio", {
        t({"#include <stdio.h>"}),
        t({"", "#include <stdlib.h>"}),
        t({"", ""}), i(0)
    })
})

ls.add_snippets("c", {
    s("maind", {
        t({"int main() {"}),
        t({"", "\t"}), i(0),
        t({"", ""}),
        t({"", "\treturn 0;"}),
        t({"", "}"})
    })
})

ls.add_snippets("cpp", {
    s("codeforces", {
        t({"#include <iostream>"}),
        t({"", "","using namespace std;", "using ll = long long;", "using ull = unsigned long long;"}),
        t({"", "", "int main() {", "\tios_base::sync_with_stdio(false);", "\tcin.tie(NULL);", "\t"}), i(0),
        t({"", "\treturn 0;", "", "}"})
    })
})

ls.add_snippets("cmake", {
    s("default", {
        t({"cmake_minimum_required (VERSION 3.26)"}),
        t({"", "", "project(main)"}),
        t({"", "# set(CMAKE_CXX_COMPILER \"/usr/bin/c++\")"}),
        t({"", "set(CMAKE_EXPORT_COMPILE_COMMANDS 1)"}),
        t({"", "", "add_executable(main main.cpp)"}),
    })
})

ls.add_snippets("make", {
    s("default", {
        t({"default:"}),
        t({"", "\tg++ main.cpp -o main"}),
    })
})

local texsnip = {
    s("default", {
        t({"\\documentclass{article}"}),
        t({"", "\\usepackage{amsmath, amssymb}"}),
        t({"", "\\usepackage[a4paper, total={6in, 9in}]{geometry}"}),
        t({"", "\\usepackage{listings} % For code formatting"}),
        t({"", "\\usepackage{xcolor} % For custom colors"}),
        t({"", "\\usepackage{graphicx}"}),
        t({"", "\\usepackage{fontspec}"}),
        t({"", "\\usepackage{subcaption}"}),
        t({"", "\\usepackage{wrapfig}"}),
        t({"", "\\usepackage{cancel}"}),
        t({"", "\\graphicspath{ {./figures/} }"}),
        t({"", "\\usepackage{xparse} % Allows advanced command definitions"}),
        t({"", "\\newcounter{problemcounter}"}),
        t({"", "\\NewDocumentCommand{\\problem}{o}{"}),
        t({"", "  \\noindent"}),
        t({"", "  \\fbox{Problem %"}),
        t({"", "    \\IfNoValueTF{#1}"}),
        t({"", "      {\\stepcounter{problemcounter}\\arabic{problemcounter}} % If no optional arg, use counter"}),
        t({"", "      {#1} % Else, use custom label"}),
        t({"", "  }"}),
        t({"", "}"}),
        t({"", ""}),
        t({"", "\\setmainfont{UbuntuMono Nerd Font Mono}"}),
        t({"", "\\lstset{ frame=single } "}),
        t({"", ""}),
        t({"", "\\title{}"}),
        t({"", "\\author{B11605076 Cheng-Ru}"}),
        t({"", "\\date{\\today}"}),
        t({"", ""}),
        t({"", "\\begin{document}"}),
        t({"", "\\end{document}"}),
    })
}
ls.add_snippets("plaintex", texsnip)
ls.add_snippets("tex", texsnip)
