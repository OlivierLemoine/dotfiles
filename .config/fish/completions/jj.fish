function get_jj_branches
    jj branch list | awk -F: '{ print $1 }'
end

complete -c jj -n "__fish_use_subcommand" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_use_subcommand" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_use_subcommand" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_use_subcommand" -s V -l version -d 'Print version information'
complete -c jj -n "__fish_use_subcommand" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_use_subcommand" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_use_subcommand" -f -a "version" -d 'Display version information'
complete -c jj -n "__fish_use_subcommand" -f -a "init" -d 'Create a new repo in the given directory'
complete -c jj -n "__fish_use_subcommand" -f -a "checkout" -d 'Create a new, empty change and edit it in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "untrack" -d 'Stop tracking specified paths in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "files" -d 'List files in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "print" -d 'Print contents of a file in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "diff" -d 'Show changes in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "show" -d 'Show commit description and changes in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "status" -d 'Show high-level repo status'
complete -c jj -n "__fish_use_subcommand" -f -a "log" -d 'Show commit history'
complete -c jj -n "__fish_use_subcommand" -f -a "obslog" -d 'Show how a change has evolved'
complete -c jj -n "__fish_use_subcommand" -f -a "interdiff" -d 'Compare the changes of two commits'
complete -c jj -n "__fish_use_subcommand" -f -a "describe" -d 'Edit the change description'
complete -c jj -n "__fish_use_subcommand" -f -a "close" -d 'Mark a revision closed'
complete -c jj -n "__fish_use_subcommand" -f -a "open" -d 'Mark a revision open'
complete -c jj -n "__fish_use_subcommand" -f -a "duplicate" -d 'Create a new change with the same content as an existing one'
complete -c jj -n "__fish_use_subcommand" -f -a "abandon" -d 'Abandon a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "edit" -d 'Edit a commit in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "new" -d 'Create a new, empty change and edit it in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "move" -d 'Move changes from one revision into another'
complete -c jj -n "__fish_use_subcommand" -f -a "squash" -d 'Move changes from a revision into its parent'
complete -c jj -n "__fish_use_subcommand" -f -a "unsquash" -d 'Move changes from a revision\'s parent into the revision'
complete -c jj -n "__fish_use_subcommand" -f -a "restore" -d 'Restore paths from another revision'
complete -c jj -n "__fish_use_subcommand" -f -a "touchup" -d 'Touch up the content changes in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "split" -d 'Split a revision in two'
complete -c jj -n "__fish_use_subcommand" -f -a "merge" -d 'Merge work from multiple branches'
complete -c jj -n "__fish_use_subcommand" -f -a "rebase" -d 'Move revisions to different parent(s)'
complete -c jj -n "__fish_use_subcommand" -f -a "backout" -d 'Apply the reverse of a revision on top of another revision'
complete -c jj -n "__fish_use_subcommand" -f -a "branch" -d 'Manage branches'
complete -c jj -n "__fish_use_subcommand" -f -a "undo" -d 'Undo an operation (shortcut for `jj op undo`)'
complete -c jj -n "__fish_use_subcommand" -f -a "operation" -d 'Commands for working with the operation log'
complete -c jj -n "__fish_use_subcommand" -f -a "workspace" -d 'Commands for working with workspaces'
complete -c jj -n "__fish_use_subcommand" -f -a "sparse" -d 'Manage which paths from the current checkout are present in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "git" -d 'Commands for working with the underlying Git repo'
complete -c jj -n "__fish_use_subcommand" -f -a "bench" -d 'Commands for benchmarking internal operations'
complete -c jj -n "__fish_use_subcommand" -f -a "debug" -d 'Low-level commands not intended for users'
complete -c jj -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from version" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from version" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from version" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from version" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from version" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from init" -l git-repo -d 'Path to a git repo the jj repo will be backed by' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from init" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from init" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from init" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from init" -l git -d 'Use the Git backend, creating a jj repo backed by a Git repo'
complete -c jj -n "__fish_seen_subcommand_from init" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from init" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from co" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from co" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from co" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from co" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from co" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from co" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from co" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from co" -a '(get_jj_branches)' -f
complete -c jj -n "__fish_seen_subcommand_from checkout" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from checkout" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from checkout" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from checkout" -a '(get_jj_branches)' -f
complete -c jj -n "__fish_seen_subcommand_from untrack" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from untrack" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from untrack" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from untrack" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from untrack" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from files" -s r -l revision -d 'The revision to list files in' -r
complete -c jj -n "__fish_seen_subcommand_from files" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from files" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from files" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from files" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from files" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from print" -s r -l revision -d 'The revision to get the file contents from' -r
complete -c jj -n "__fish_seen_subcommand_from print" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from print" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from print" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from print" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from print" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from diff" -s r -l revision -d 'Show changes in this revision, compared to its parent(s)' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l from -d 'Show changes from this revision' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l to -d 'Show changes to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from diff" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -s s -l summary -d 'For each path, show only whether it was modified, added, or removed'
complete -c jj -n "__fish_seen_subcommand_from diff" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from diff" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from diff" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from diff" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from show" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from show" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from show" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from show" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from show" -s s -l summary -d 'For each path, show only whether it was modified, added, or removed'
complete -c jj -n "__fish_seen_subcommand_from show" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from show" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from show" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from show" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from status" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from status" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from status" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from status" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from status" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from log" -s r -l revisions -d 'Which revisions to show' -r
complete -c jj -n "__fish_seen_subcommand_from log" -s T -l template -d 'Render each revision using the given template (the syntax is not yet documented and is likely to change)' -r
complete -c jj -n "__fish_seen_subcommand_from log" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from log" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l reversed -d 'Show revisions in the opposite order (older revisions first)'
complete -c jj -n "__fish_seen_subcommand_from log" -l no-graph -d 'Don\'t show the graph, show a flat list of revisions'
complete -c jj -n "__fish_seen_subcommand_from log" -s p -l patch -d 'Show patch'
complete -c jj -n "__fish_seen_subcommand_from log" -s s -l summary -d 'For each path, show only whether it was modified, added, or removed'
complete -c jj -n "__fish_seen_subcommand_from log" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from log" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from log" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from log" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s T -l template -d 'Render each revision using the given template (the syntax is not yet documented and is likely to change)' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from obslog" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l no-graph -d 'Don\'t show the graph, show a flat list of revisions'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s p -l patch -d 'Show patch compared to the previous version of this change'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s s -l summary -d 'For each path, show only whether it was modified, added, or removed'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l from -d 'Show changes from this revision' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l to -d 'Show changes to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s s -l summary -d 'For each path, show only whether it was modified, added, or removed'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from describe" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from describe" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from describe" -l stdin -d 'Read the change description from stdin'
complete -c jj -n "__fish_seen_subcommand_from describe" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from describe" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from close" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from close" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from close" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from close" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from close" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from close" -s e -l edit -d 'Also edit the description'
complete -c jj -n "__fish_seen_subcommand_from close" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from close" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from open" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from open" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from open" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from open" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from open" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from open" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from abandon" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from abandon" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from abandon" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from abandon" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from abandon" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from edit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from edit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from edit" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from edit" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from edit" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from edit" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from new" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from new" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from new" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from new" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from new" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from move" -l from -d 'Move part of this change into the destination' -r
complete -c jj -n "__fish_seen_subcommand_from move" -l to -d 'Move part of the source into this change' -r
complete -c jj -n "__fish_seen_subcommand_from move" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from move" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from move" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from move" -s i -l interactive -d 'Interactively choose which parts to move'
complete -c jj -n "__fish_seen_subcommand_from move" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from move" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from squash" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from squash" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from squash" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -s i -l interactive -d 'Interactively choose which parts to squash'
complete -c jj -n "__fish_seen_subcommand_from squash" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from squash" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s i -l interactive -d 'Interactively choose which parts to unsquash'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from restore" -l from -d 'Revision to restore from (source)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l to -d 'Revision to restore into (destination)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from restore" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -s i -l interactive -d 'Interactively choose which parts to restore'
complete -c jj -n "__fish_seen_subcommand_from restore" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from restore" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from touchup" -s r -l revision -d 'The revision to touch up' -r
complete -c jj -n "__fish_seen_subcommand_from touchup" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from touchup" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from touchup" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from touchup" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from touchup" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from split" -s r -l revision -d 'The revision to split' -r
complete -c jj -n "__fish_seen_subcommand_from split" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from split" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from split" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from split" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from split" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from merge" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from merge" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from merge" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from merge" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from rebase" -s b -l branch -d 'Rebase the whole branch (relative to destination\'s ancestors)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s s -l source -d 'Rebase this revision and its descendants' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s r -l revision -d 'Rebase only this revision, rebasing descendants onto this revision\'s parent(s)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s d -l destination -d 'The revision(s) to rebase onto' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from rebase" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from rebase" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from backout" -s r -l revision -d 'The revision to apply the reverse of' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -s d -l destination -d 'The revision to apply the reverse changes on top of' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from backout" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from backout" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "create" -d 'Create a new branch'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "delete" -d 'Delete an existing branch and propagate the deletion to remotes on the next push'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "forget" -d 'Delete the local version of an existing branch, without propagating the deletion to remotes'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List branches and their targets'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "set" -d 'Update a given branch to point to a certain commit'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from delete; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from forget" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from forget" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from forget" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from forget" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from forget" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from list" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from list" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -l allow-backwards -d 'Allow moving the branch backwards or sideways'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from undo" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from undo" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from undo" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from undo" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from undo" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -f -a "undo" -d 'Undo an operation'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -f -a "restore" -d 'Restore to the state at an operation'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from undo; and not __fish_seen_subcommand_from restore; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from log" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from log" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from log" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from log" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from log" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from undo" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from undo" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from undo" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from undo" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from undo" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from restore" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from restore" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from restore" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from restore" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from restore" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from operation; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "add" -d 'Add a workspace'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "forget" -d 'Stop tracking a workspace\'s checkout in the repo'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List workspaces'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from forget; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -l name -d 'A name for the workspace' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from forget" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from forget" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from forget" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from forget" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from forget" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from list" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from list" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from workspace; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from sparse" -l add -d 'Patterns to add to the working copy' -r -F
complete -c jj -n "__fish_seen_subcommand_from sparse" -l remove -d 'Patterns to remove from the working copy' -r -F
complete -c jj -n "__fish_seen_subcommand_from sparse" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse" -l clear -d 'Include no files in the working copy (combine with --add)'
complete -c jj -n "__fish_seen_subcommand_from sparse" -l reset -d 'Include all files in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse" -l list -d 'List patterns'
complete -c jj -n "__fish_seen_subcommand_from sparse" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "remote" -d 'Manage Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "fetch" -d 'Fetch from a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "clone" -d 'Create a new repo backed by a clone of a Git repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "push" -d 'Push to a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "import" -d 'Update repo with changes made in the underlying Git repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "export" -d 'Update the underlying Git repo with changes made in the repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from fetch; and not __fish_seen_subcommand_from clone; and not __fish_seen_subcommand_from push; and not __fish_seen_subcommand_from import; and not __fish_seen_subcommand_from export; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "add" -d 'Add a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "remove" -d 'Remove a Git remote and forget its branches'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from add" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from add" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from add" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from add" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from remove" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from remove" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from remove" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from remove" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from remove" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from list" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from list" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from remote; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -l remote -d 'The remote to fetch from (only named remotes are supported)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from fetch" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from clone" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from clone" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from clone" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from clone" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from clone" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l remote -d 'The remote to push to (only named remotes are supported)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l branch -d 'Push only this branch' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l change -d 'Push this commit by creating a branch based on its change ID' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l all -d 'Push all branches'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l dry-run -d 'Only display what will change on the remote'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from push" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from import" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from import" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from import" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from import" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from import" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from export" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from export" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from export" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from export" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from export" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from git; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -f -a "commonancestors" -d 'Find the common ancestor(s) of a set of commits'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -f -a "isancestor" -d 'Checks if the first commit is an ancestor of the second commit'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -f -a "walkrevs" -d 'Walk revisions that are ancestors of the second argument but not ancestors of the first'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -f -a "resolveprefix" -d 'Resolve a commit ID prefix'
complete -c jj -n "__fish_seen_subcommand_from bench; and not __fish_seen_subcommand_from commonancestors; and not __fish_seen_subcommand_from isancestor; and not __fish_seen_subcommand_from walkrevs; and not __fish_seen_subcommand_from resolveprefix; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from commonancestors" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from commonancestors" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from commonancestors" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from commonancestors" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from commonancestors" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from isancestor" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from isancestor" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from isancestor" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from isancestor" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from isancestor" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from walkrevs" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from walkrevs" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from walkrevs" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from walkrevs" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from walkrevs" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from resolveprefix" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from resolveprefix" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from resolveprefix" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from resolveprefix" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from resolveprefix" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from bench; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "completion" -d 'Print a command-line-completion script'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "mangen" -d 'Print a ROFF (manpage)'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "resolverev" -d 'Resolve a revision identifier to its full ID'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "workingcopy" -d 'Show information about the working copy state'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "template" -d 'Parse a template'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "index" -d 'Show commit index stats'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "reindex" -d 'Rebuild commit index'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "operation" -d 'Show information about an operation and its view'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from completion; and not __fish_seen_subcommand_from mangen; and not __fish_seen_subcommand_from resolverev; and not __fish_seen_subcommand_from workingcopy; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from index; and not __fish_seen_subcommand_from reindex; and not __fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l bash -d 'Print a completion script for Bash'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l fish -d 'Print a completion script for Fish'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l zsh -d 'Print a completion script for Zsh'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from completion" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from mangen" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from mangen" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from mangen" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from mangen" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from mangen" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from resolverev" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from workingcopy" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from workingcopy" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from workingcopy" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from workingcopy" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from workingcopy" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from template" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from template" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from template" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from template" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from template" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from index" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from index" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from index" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from index" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from index" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from reindex" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from reindex" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from reindex" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from reindex" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from reindex" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from operation" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from operation" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from operation" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from operation" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from operation" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
complete -c jj -n "__fish_seen_subcommand_from help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from help" -l color -d 'When to colorize output (always, never, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from help" -l no-commit-working-copy -d 'Don\'t commit the working copy'
complete -c jj -n "__fish_seen_subcommand_from help" -s h -l help -d 'Print help information, more help with --help than with -h'
