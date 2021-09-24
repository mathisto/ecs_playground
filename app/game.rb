Maw!

controls.define :reset, keyboard: :r

init { $state.background = [grid.rect, rand(255), rand(255), rand(255)] }

tick {
    solids << $state.background
    init if controls.reset_down?
}
