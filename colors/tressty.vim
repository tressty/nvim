lua << EOF
package.loaded['tressty'] = nil
package.loaded['tressty.util'] = nil
package.loaded['tressty.colors'] = nil
package.loaded['tressty.theme'] = nil
package.loaded['tressty.functions'] = nil

require('tressty.util').load()
EOF
