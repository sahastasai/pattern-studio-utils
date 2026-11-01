import { expect, test } from "bun:test";

test("the studio page has a place for a design", async () => {
  const html = await Bun.file("index.html").text();
  expect(html).toContain('<canvas id="artboard"');
});
