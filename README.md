# Raspberry Pi LoRa gateway HAT for RFM9x, DRF1278F and XL1278-SMT boards

A somewhat 'universal' LoRa gateway HAT for RFM9x, DRF1278F and XL1278-SMT boards loosely based upon [Raspberry Pi+ LoRa(TM) Expansion Board](https://store.uputronics.com/index.php?route=product/product&path=61&product_id=68) and designed for the [PiInTheSky/lora-gateway](https://github.com/PiInTheSky/lora-gateway) code.

# Module identification

![DRF1278F](/Docs/RFM98W.jpg)

HOPERF RFM98W

![DRF1278F](/Docs/DRF1278F-400x.jpg)

Dorji DRF1287F

![XL1278-SMT-front](/Docs/XL1278-SMT-front-200x.jpg) ![XL1278-SMT-back](/Docs/XL1278-SMT-rear-200x.jpg)

HR-WT XL1278-SMT

Note: while the DRF1278F and XL1278-SMT boards look similar, the pinouts are significantly different.

## Confusion

There is a lot of confusion between Ebay and AliExpress sellers alike. One ebay seller even showing photos of both types of boards on the same listing. So check carefully, or use what you're given with this either/or breakout.

![Ebay screenshot](/Docs/ebay-hedge-bets.jpg)

## Documentation

CI/CD documentation generation ![KiCad exports documentation generation](https://github.com/matburnham/lora-gateway-pi/actions/workflows/kicad-exports.yml/badge.svg?service=github)

TODO: links to generated documentation, etc.

![Front render](/Docs/Render/front.png)
![Rear render](/Docs/Render/rear.png)

![Board v1.0](/Docs/board_v1.0.jpg)

# Libraries

* KiCad symbol and footprint libraries for DRF1278F and XL1278-SMT for KiCad are at [kicad-libs](https://github.com/matburnham/kicad-libs)

# References

* Inspired by Uputronics' [Raspberry Pi+ LoRa(TM) Expansion Board](https://store.uputronics.com/index.php?route=product/product&path=61&product_id=68)

* [Dorji DRF1278F datasheet](http://www.dorji.com/docs/data/DRF1278F.pdf) | [respository copy](Docs/DRF1278F.pdf)
* Closest information to a [XL1278-SMT datasheet](http://www.hr-wt.com/html_products/XL1278-SMT-59.html) | [respository screenshot](Docs/screencapture-hr-wt-html-products-XL1278-SMT-59-html-2021-02-26-15_49_33.png)
