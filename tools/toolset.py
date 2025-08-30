from simpletooling import Toolset
from simpletooling.indexing import load_tool_from_module

import tools

# Create a Toolset instance
toolset = Toolset(title="Template API", version="1.0.0")

load_tool_from_module(tools)