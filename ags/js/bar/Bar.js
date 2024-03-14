import { Workspaces } from "./Workspaces.js";
import { Clock } from "./Clock.js";
import { SysTray } from "./SysTray.js";
import { ControlButton } from "./ControlButton.js";
import { BatteryLabel } from "./BatteryLabel.js";

const Top = () =>
  Widget.Box({
    vertical: true,
    vpack: "start",
    css: "margin: 0.7em 0.2em",
    spacing: 8,
    children: [Workspaces()],
  });
const Middle = () =>
  Widget.Box({
    vertical: true,
    css: "margin: 0.7em 0.2em",
    spacing: 8,
    children: [Clock()],
  });
const Bottom = () =>
  Widget.Box({
    css: "margin: 0.7em 0.2em",
    vertical: true,
    vpack: "end",
    spacing: 8,
    children: [
      SysTray(),
      BatteryLabel(),
      ControlButton(),
    ],
  });
export const Bar = (monitor = 0) =>
  Widget.Window({
    name: `bar-${monitor}`, // name has to be unique
    class_name: "bar",
    monitor,
    anchor: ["top", "bottom", "left"],
    exclusivity: "exclusive",
    child: Widget.CenterBox({
      class_name: "cbox",
      vertical: true,
      start_widget: Top(),
      center_widget: Middle(),
      end_widget: Bottom(),
    }),
  });
