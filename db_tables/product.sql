-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 10:20 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `active`, `created`, `modified`) VALUES
(1, 'Knit Merino Wool Sheath Dress', 'The Classy Missy Collection by Creative Director Zac Posen
This body-hugging sheath is knit from pure merino wool to create a sleek, sophisticated dress that feels just as good as it looks. Finished with contrast tipping at the jewel neckline and arms, this polished essential features a flattering princess-seamed bodice and a defined waist. Pull-on style.

39½" center back length; 100% merino wool; machine wash or dry-clean; imported.', '399.73', 1, '2017-01-23 12:17:33', '2017-01-23 12:17:33'),

(2, 'Floral-Print Striped Cotton Poplin Pleated Shirt Dress ','Give polished looks a ladylike twist with this retro-cool shirt dress that mixes feminine florals and sharp stripes. Crafted from pure cotton poplin, this sweet frock features a point collar, short sleeves, a button placket, a removable self sash and a pretty pleated skirt.

37" center back length; 100% cotton; machine wash; imported.', '295.47', 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),

(3, 'Gingham Double-Weave Sheath Dress', 'Fresh, feminine gingham lends this chic sheath a sprightly air. This tactile double-weave cotton-blend dress features figure-flattering panel construction, a jewel neckline, short sleeves, a concealed back zip closure and a back vent. Fully lined.

39" center back length; 74% cotton, 22% nylon, 4% spandex; dry-clean; imported. ', '298.71', 1, '2017-01-23 12:24:09', '2017-01-23 12:24:09'),



(4, 'Floral Lace Dress', 'Flawless, feminine style is a snap in this sweet frock crafted from intricate floral lace. Cast in an eye-catching hue, it features a modified bateau neckline, sheer short sleeves, a flattering princess-seamed bodice, a defined waist, a slight A-line skirt and a concealed back zip closure.

38" center back length; 100% polyester; machine wash; imported.', '358.16', 1, '2017-01-23 12:27:56', '2017-01-23 12:27:56'),

(5, 'Ruffled Stretch-Wool-Blend Dress', 'Meet your new favorite desk-to-date dress. Cast in a vibrant hue, this ultra-flattering dress features pretty ruffles at the shoulders and the hem for a fresh, feminine feel. Crafted from a rich stretch-wool blend and finished with a jewel neckline, flattering princess seams, a nipped-in waistband, a V-back and a concealed back zip closure. Fully lined.

28½" center back length; 55% wool, 20% viscose, 19% polyester, 6% elastane; dry-clean; imported.  ', '449.83', 1, '2017-01-23 12:28:01', '2017-01-23 12:28:01'),
(6, 'Striped Cotton Tweed Dress', 'The Brooks Brothers Womens Collection by Creative Director Zac Posen
Cheerful stripes and richly textured tweed make this dress the perfect pick to infuse your wardrobe with a fresh feel. Crafted from pure cotton, this beautifully tailored design features a square neckline, princess seams at the bodice, figure-flattering contoured darts at the waist, a feminine A-line skirt and a concealed back zip closure. Fully lined.

38" center back length; 100% cotton; dry-clean; imported. ', '451.09', 1, '2017-01-23 12:28:02', '2017-01-23 12:28:02'),

(7, 'Cotton Twill Trench Coat', 'This double-breasted trench is truly timeless. Crafted from durable 100% cotton twill, this must-have design includes all the classic details: epaulettes, a gun flap at the right shoulder, button-tab cuffs, a removable self-belt, welt front pockets, a back storm flap and a back inverted-pleat vent. Inside, a removable lining makes this clever design an all-season essential.

36" center back length; dry-clean; imported.', '499.24', 1, '2017-01-23 12:29:00', '2017-01-23 12:29:00'),

(8, 'Duke Loafers Black', 'The Duke Loafers by Beau Coops is crafted in Italy, from soft leather. She features a classic loafer top strap and layered upper for clean lines. A low heel and slightly raised sole provides comfort, while a contrast-tone outsole adds a little extra color and linear detail. A shoe fit for all occasions where only a closed, flat style will do.
- Leather Upper and Lining - Made in Italy- Contrast-tone outsole- Top strap- Winchester sole', '499.00', 1, '2017-01-23 12:29:01', '2017-01-23 12:29:01'),

(9, 'Duke Loafers Tierra', 'The Duke Loafers by Beau Coops is crafted in Italy, from soft leather. She features a classic loafer top strap and layered upper for clean lines. A low heel and slightly raised sole provides comfort, while a contrast-tone outsole adds a little extra color and linear detail. A shoe fit for all occasions where only a closed, flat style will do.
- Leather Upper and Lining - Made in Italy- Contrast-tone outsole- Top strap- Winchester sole', '499.00', 1, '2017-01-23 12:29:02', '2017-01-23 12:29:02'),
(10, 'Billini Salome', 'A ​playful wedge with a platform sole for extra drama, the Salome sandals from Billini feature wrap-around ankle ties for a chic finish.

- Soft woven upper
- Light beige and black leopard spot print
- Open almond toe
- Twin straps to front with fixed knot detail to centre
- Slingback ankle strap
- Adjustable wrap-around ankle ties
- Woven jute-look sole; 3.5cm platform; 13cm wedge heel', '99.00', 1, '2017-01-23 12:29:05', '2017-01-23 12:29:04'),
(11, 'BY CHARLOTTE Charmed Hoops Gold', 'Beautifully crafted from sterling silver, the Charmed Hoops from By Charlotte are adorned with an enchanting four leaf clover charm that suspends from an open hoop.

- Hoop Diameter: 11mm; Charm: H4mm x W4mm
- Sterling gold; ceramic plated
- Hoop design with four leaf clover charm
- Stud fastenings for pierced ears
- Comes with branded gift box', '199.00', 1, '2017-01-23 12:29:05', '2017-01-23 12:29:05'),

(12, 'BY CHARLOTTE Charmed Hoops Silver', 'Beautifully crafted from sterling silver, the Charmed Hoops from By Charlotte are adorned with an enchanting four leaf clover charm that suspends from an open hoop.

- Hoop Diameter: 11mm; Charm: H4mm x W4mm
- Sterling silver; ceramic plated
- Hoop design with four leaf clover charm
- Stud fastenings for pierced ears
- Comes with branded gift box', '199.00', 1, '2017-01-23 12:29:06', '2017-01-23 12:29:06'),


(13, 'BY CHARLOTTE Eye of Protection Bracelet', 'A refined addition to any daily jewellery rotation, the By Charlotte Eye of Protection Bracelet is set with a sage green amazonite stone pendant reminiscent of the ancient Evil Eye motif.

- Chain Length: 18cm
- Gold-plated sterling silver
- Evil Eye pendant; sage green amazonite stone with white cubic zirconia crystals
- Fine flat cable chain
- Spring ring fastening
- Two shortening rings

PLEASE NOTE: All stones and crystals are unique, and may have slight variances in colour and characteristics from the image shown.', '139.00', 1, '2017-01-23 12:29:07', '2017-01-23 12:29:07'),

(14, 'DYLAN KAIN The Birkin Belt', 'Crafted from genuine leather, The Birkin Belt by Dylan Kain is bound to provide a stylish finish to your look. The slim belt is enhanced with a sleek, versatile palette and gold-toned hardware.

- Length: Smallest: 70cm; Largest: 105cm
- Genuine leather construction
- Black shade
- Gold-toned cross and bars and post fastening
- Comes with a branded dust bag and gift box', '119.00', 1, '2017-01-23 12:29:08', '2017-01-23 12:29:08'),

(15, 'ELLESSE Taggia - Womens', 'Italian sportswear giant Ellesse is the ultimate fusion of form and function. The brand was founded in 1959 by tailor Leonardo Servadio, after he was unable to find skiwear for himself that was at once stylish and performance-minded. In the fifty years since, Ellesse has expanded their portfolio to include premium sportswear and lifestyle ranges, dressing athletes at the highest level, all while infusing every piece with a fashion-forward sensibility.

- Grained leather upper
- Optic white shade
- Round toe
- Lace-up front
- Navy embroidered branding to the side
- Woven branding to tongue with grey and white accents
- Padded collar
- Raised Semi-Palla logo to heel counter', '119.90', 1, '2017-01-23 12:29:09', '2017-01-23 12:29:09'),

(16, 'Grace Straw Boater Hat', 'Known for their signature feminine style, Forever New designs are created to celebrate the beauty of the female figure. Defined by a versatile collection of pieces that will have you stepping out with confidence, look to the brand for tailored separates, classic gowns, effortless party dresses and polished shoes and accessories.

- Rounded top
- Straw construction
- Blush grosgrain trim
- Adjustable sizing elastic for the perfect fit
- Approximate brim width: 8cm

100% Straw', '39.90', 1, '2017-01-23 12:29:10', '2017-01-23 12:29:10'),

(17, '697 Stina Low Clogs Black', 'Scandinavian Summer in a shoe is the 697 Stina Low Clogs from Funkis - ready-made for picnics in the park and bike rides along the canal.

- Vegetable tanned leather upper
- Black shade
- Caged vamp; open toe
- Fixed ankle strap; silver-toned buckle fastening
- Timber base
- Moulded footbed
- Rubber gripping to sole
- Handmade in Sweeden
- 5cm Heel

Upper: Leather
Lining: Leather
Sole: Timber & Rubber', '149.90', 1, '2017-01-23 12:29:11', '2017-01-23 12:29:11'),


(18, '697 Stina Low Clogs Natural', 'Scandinavian Summer in a shoe is the 697 Stina Low Clogs from Funkis - ready-made for picnics in the park and bike rides along the canal.

- Vegetable tanned leather upper
- Black shade
- Caged vamp; open toe
- Fixed ankle strap; silver-toned buckle fastening
- Timber base
- Moulded footbed
- Rubber gripping to sole
- Handmade in Sweeden
- 5cm Heel

Upper: Leather
Lining: Leather
Sole: Timber & Rubber', '149.90', 1, '2017-01-23 12:29:12', '2017-01-23 12:29:12'),


(19, 'GEORG JENSEN Offspring Cuff', 'Georg Jensen is a Danish jewellery and silverware design house known for their Scandinavian craftsmanship, bold artistic designs and creative collaborations. The Offspring Cuff is crafted in an organic form, creating timeless beauty that can be passed down from generation to generation.

- Materials: Sterling Silver
- Circumference: S: 155 mm / 6.1 inches, M: 165 mm / 6.5 inches, L: 175 mm / 6.89 inches- Organic shape', '159.90', 1, '2017-01-23 12:29:12', '2017-01-23 12:29:13'),

(20, 'JO MERCER Somerset Casual Flats', 'An Australian icon since 1998, Melbourne-based footwear label Jo Mercer is the cornerstone of any well-curated shoe wardrobe. With a focus on fit, quality and enduring design, every pair of Jo Mercer shoes is a sartorial investment you will turn to time and time again. With a range that includes go-anywhere leather boots, party-perfect heels and everything in-between, Jo Mercer has a pair to suit every style profile.

- Smooth genuine leather upper; ponyhair heel counter
- Matte black; caramel heel with black leopard print
- Enclosed pointed toe
- Low-cut rounded vamp
- Padded footbed
- Enclosed heel counter
- Stacked heel; rubberised tread outsole', '159.90', 1, '2017-01-23 12:29:13', '2017-01-23 12:29:13'),
(21, 'JO MERCER Teckel High Heels Black', 'An Australian icon since 1998, Melbourne-based footwear label Jo Mercer is the cornerstone of any well-curated shoe wardrobe. The Teckle High Heels are perfect for all your occasions. Refined and Sleek they add that finishing touch to any outfit.

- Soft genuine leather
- Pointed toe shape
- Black Patent Hue
- Stiletto heel

Heel height: 9.8cm
Upper: Leather
Lining: Leather
Sole: Manmade', '199.90', 1, '2017-01-23 12:29:14', '2017-01-23 12:29:14'),

(22, 'LE SPECS Caliente black', 'For a contemporary take on the classic cat eye, look no further than Le Specs Caliente. These sleek black shades sport polished gold metal detailing through the brows and temples for a luxe twist.

- Cat eye frame shape
- Black frames and arms; gold-toned metal temples and brow
- Category 3 khaki mono lenses; high sun-glare reduction and good UV protection
- Includes protective canvas pouch
- One-year warranty', '79.90', 1, '2017-01-23 12:29:15', '2017-01-23 12:29:15'),

(23, 'LOVE MOSCHINO Quilted Cross-Body Bag black', 'The Quilted Cross-Body Bag from designer diffusion LOVE MOSCHINO offers an of-the-moment camera bag silhouette and diamond-quilted design. Fastened by a wide shoulder strap and finished off with the brands signature gold-toned branding, this cross-body is set to add a maximalist touch to your everyday rotation.

- Measurements: H15cm x W19cm x D9.5cm
- Faux leather construction; lined
- Black shade
- Polished gold-toned hardware
- Large quilted pocket to front; branded appliqué
- Top zip accessibility
- Detachable adjustable shoulder strap
- Comes with branded dust bag', '79.90', 1, '2017-01-23 12:29:16', '2017-01-23 12:29:16'),


(24, 'Michael kors mini parker rose gold ', 'The sense of glamour and luxury is not missed in this Michael Kors collection. A truly iconic, world-renowned design that exudes sophistication, indulgence and a modern lifestyle for the fashion-forward jet setter.

- Band and Case Colour: Rose Gold-Tone
- Band and Case Material: Stainless Steel
- Band Width: 17.5MM
- Case Size: 33MM
- Case Thickness: 17.5MM
- Water Resistant: 10 ATM', '469.90', 1, '2017-01-23 12:29:17', '2017-01-23 12:29:17'),

(25, 'NIKE Blazer Low LE - Womens', 'The Nike Blazer Low LE Basketball Shoes are streamlined with a lower collar and minimal stitching, whilst maintaining an urban performance aesthetic. The all-white sneakers are a weekend-worthy way to finish a minimal-chic outfit.

- White leather upper
- Round toe
- Lace-up front
- Minimal stitching
- Swoosh on side
- Low collar for natural fit around the ankle
- EVA sockliner for cushioning and impact absorption
- Rubber outsole for excellent traction', '110.90', 1, '2017-01-23 12:29:18', '2017-01-23 12:29:18'),


(26, 'PUMA Defy Mid Core - Womens', 'Bridging the gap between form and function, German-based brand Puma is one of the leading icons behind contemporary sportswear and lifestyle fashion. From ground-breaking improvements in sportswear technology to finely crafted casual styles, Puma excels at making fast product designs for the fastest athletes in the world.

- Perforated woven upper
- Mid-height profile
- Black and neon pink colour-way
- Round toe; rubber bumper
- Bootie construction
- Decorative cross-straps to the vamp
- Wordmark to the vamp and tongue
- Heel pull tab
- Big Cat logo applique to the heel
- High-rebound foam midsole offers cushioning and responsiveness
- Rubber outsole with traction points', '170.90', 1, '2017-01-23 12:29:19', '2017-01-23 12:29:19'),

(27, 'QUAY AUSTRALIA QUAY X CHRISSY', 'Engineered with light-blocking blue light lenses, the cat eye All Nighter glasses from Quay Australia are perfect for reducing eye strain when working.

- Cat eye frames; mocha brown tortoiseshell and black gradient
- Clear lenses; blue light filter
- Moulded nose pads
- White branding to left lens
- Slender temples arms with embossed branding
- Includes brand stamped protective case

PRACTICE SAFE SPECS

Stay lit, but filter out the blues. Introducing Quay Australias blue light blocking clear lens glasses.

Blue light from screens can cause headaches, blurry vision, and eye strain. Keep your eyes in the clear with Quay Australias blue light lenses, featuring technology to assist with blocking potentially harmful (blue) HEV light from screens to help prevent these symptoms.

Plus — look like a boss. Quay Australia has redesigned some of their best-selling sunnies in a clear blue light blocking lens format. Wear them when working on a laptop, watching TV, or scrolling the ‘gram to look good and feel good.', '65.90', 1, '2017-01-23 12:29:20', '2017-01-23 12:29:20'),

(28, 'RAY-BAN Hexagonal Flat Lens - Unisex', 'Make a statement in the Hexagonal Flat Lens from Ray-Ban. These frames offer a twist on their more well known rounded frames. The pair are perfect for for long summer days at the beach.

- Mirrored grey lenses
- Rounded hexagonal frames metal frames; gold-toned
- 100% UV protection
- Curved brow bar
- Adjustable silicone nose pads
- Thin metal temples with black plastic tips
- Logo etched on right lense
- Hard case included', '229.90', 1, '2017-01-23 12:29:21', '2017-01-23 12:29:21'),


(29, 'RAY-BAN Hexagonal Flat Lens', 'Make a statement in the Hexagonal Flat Lens from Ray-Ban. These frames offer a twist on their more well known rounded frames. The pair are perfect for for long summer days at the beach.

- Mirrored grey lenses
- Rounded hexagonal frames metal frames; gold-toned
- 100% UV protection
- Curved brow bar
- Adjustable silicone nose pads
- Thin metal temples with black plastic tips
- Logo etched on right lense
- Hard case included', '265.90', 1, '2017-01-23 12:29:22', '2017-01-23 12:29:22'),

(30, 'RAY-BAN Hexagonal Flat RB3548N', 'Update your look with the Hexagonal Flat RB3548N sunglasses from Ray-Ban. Crafted from fine gold metal framing and green tinted lenses.

- Dark green tinted lenses
- 100% UV protection
- Eye size: 51
- Hexagonal gold metal frames
- Single bridge
- Silicone nose pads
- Slim arms with brown tortoiseshell tips', '265.90', 1, '2017-01-23 12:29:23', '2017-01-23 12:29:23'),

(31, 'ROC BOOTS AUSTRALIA Indio black', 'Give your festival edit the Western treatment with ROC Boots Indio. Championing a distinctly cowboy-inspired aesthetic, the matte black pair are built with a genuine leather upper and 5cm block heel for a stylish boost.

- Genuine leather upper
- Matte black shade with decorative Western stitching to the vamp
- Pointed toe
- Side pull tabs
- 5cm block heel
- Optional 2mm footbed', '245.90', 1, '2017-01-23 12:29:24', '2017-01-23 12:29:24'),

(32, 'SENSO Petra I', 'Senso is a family owned, Australian-based footwear label known for its confident, contemporary designs. With a focus on high quality leathers and strong silhouettes, the collection contrasts a relaxed aesthetic with a subtle sense of luxury. Comprised of the finest materials, trims, treatments and linings, Senso stays true to its vision of bringing you shoes with edge, a touch of fun, and a sense of effortless style.

- Smooth leather upper and lining
- Ice blue shade
- Round, open toe
- Crossover vamp strap
- 7.5cm covered comma heel', '199.90', 1, '2017-01-23 12:29:25', '2017-01-23 12:29:25'),

(33, 'SOL SANA Megan Slides', 'Launched in 2010, Australian footwear label Sol Sana strikes the perfect balance between sartorial innovation and everyday comfort. Each season, the brand delivers a curated range of shoes crafted from genuine leather, with everything from summer-ready sandals and mules to go-anywhere ankle boots and heels to dance the night away in.

- Genuine basket-weave leather upper
- All-black shade
- Squared open toe
- Wide fixed woven strap across vamp
- Slide-on design
- Stacked heel; rubber tread outsole', '139.90', 1, '2017-01-23 12:29:26', '2017-01-23 12:29:26'),

(34, 'SPURR Sim Mules', 'Celebrated for its affordability and on-trend collections, SPURR is designed for the style-savvy shoeaholic. Launched in 2011, the brand stepped into the fashion industry and was quickly recognised for its value and contemporary designs. From summer sandals to killer boots, SPURR shoes will add versatility to your wardrobe and elevate any ensemble.

- Smooth faux-leather upper
- Black shade
- Enclosed apron toe
- Notched vamp; gold-toned horse-bit
- Cushioned footbed
- Open heel
- 2.5cm stacked heel', '49.90', 1, '2017-01-23 12:29:27', '2017-01-23 12:29:27'),


(35, 'STATUS ANXIETY Triple Threat', 'Expertly crafted with the highest quality leather, Status Anxiety designs are unassuming, yet distinctly nonchalant. With a namesake derived from the insatiable desire for social status at any cost, the brand is driven to create desirable staple wallets, bags and accessories that transcend both time and place. Worked in a contemporary palette and accented with sturdy hardware, the comprehensive Status Anxiety collection encourages personal expression whilst oozing luxe appeal.

- Measurements: H19cm x W11cm x D1.5cm
- Genuine full grain leather construction
- Pink shade
- Panelled design to front flap
- Twin stud fastenings; rose gold-toned
- Fourteen card slots
- Zipped internal coin compartment
- Cash compartment
- Monochrome canvas lining
- External slip pocket
- Embossed branding to back', '109.90', 1, '2017-01-23 12:29:28', '2017-01-23 12:29:28'),

(36, 'STEVE MADDEN Nema-L', 'This on-trend slip-on features a striped ribbon that adds style to this classic silhouette. New from Steve Madden, the Nema flats are perfect for pairing it with denim and a crisp white top for the casual simple chic look. Featuring a small .6cm heel, this shoe offers comfort and styles with the pony hair upper and luxe ribbon detail.

- Pony hair upper
- Leopard animal print
- Slip-on loafer silhouette
- made-made lining and sole
- 0.6cm heel height
- Almond toe shape', '139.90', 1, '2017-01-23 12:29:29', '2017-01-23 12:29:29'),


(37, 'SWAROVSKI Moonsun Cluster Ring', 'Whether stacked or worn solo, the Moonsun Cluster Ring by Swarovski is a striking celebration of the night sky.

- Diameter: 16mm approx. (one size)
- Rose gold-toned metal
- Prong-set white zirconia crystals
- From the MoonSun collaboration between Atelier Swarovski and internationally acclaimed actress Penélope Cruz

PLEASE NOTE: All stones and crystals are unique, and may have slight variances in colour and characteristics from the image shown.', '99.90', 1, '2017-01-23 12:29:30', '2017-01-23 12:29:30'),


(38, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy', 'With a focus on meticulously made pieces that channel personality and charm, Ted Baker has become one of the UK’s fastest-growing lifestyle brands, encompassing womenswear, accessories and handbags crafted from only the finest materials. Known for their playful prints, impeccable details and light-hearted humour, Ted Baker is the go-to brand for those who love to set trends and not follow the pack.

- Measurements: H23.5cm x W27.5cm x D11cm; Strap Drop: 23cm
- Unique textured pebble leather construction
- Navy shade
- Zip fastening to main compartment
- Slim fixed length shoulder straps
- Multiple organisational compartments to internal
- Removable inner pouch
- Jacquard satin lining
- Rose gold-toned hardware and foil branding
- Bow detail to front
- Foil branding to front and pouch', '239.90', 1, '2017-01-23 12:29:31', '2017-01-23 12:29:31'),

(39, 'THERAPY Azure', 'Devoted to developing cutting edge shoes that meet the aspirations of style-savvy shoppers, Therapy footwear is on-trend and contemporary. From statement heels to stylish summer sandals, the Therapy team scour the globe for the hottest trends to ensure you always put your best foot forward.

- Faux leather braided upper
- Tan shade
- Pointed toe
- Slip-on design
- 6cm block heel', '89.90', 1, '2017-01-23 12:29:32', '2017-01-23 12:29:32'),


(40, 'TONIMAY Onyx and Kyanite Solace Stack Pack', 'Designed in Laura Byrnes Sydney studio, ToniMays unique, bohemian-inspired jewellery pieces are made for those who wander. As beautiful stacked together as worn separately, the 925 sterling silver Onyx and Kyanite Solace Stack Pack is a three-piece set accented with kyanite and black onyx crystals.



- Diameter: 20mm (size 8)

- Set of three; stackable

- 925 sterling silver construction

- Designers Solace Ring with black onyx to centre; Crescent Ring with etched detailing; Crown Ring with etching and inset kyanite gemstone

- Handmade', '220.90', 1, '2017-01-23 12:29:33', '2017-01-23 12:29:33'),

(41, 'TORY BURCH The Reva Gold-Tone Analogue Watch', 'Tory Burch is an American lifestyle brand that embodies the personal style and sensibility of its Executive Chairman and Chief Creative Officer, Tory Burch. The collection, known for its colourful & eclectic details uses inspiration from art, music, travel, interiors and the designers own stylish parents.

- Strap Color: Gold-Tone
- Dial Color:Cream
- Band Material:Stainless Steel
- Strap Width:16 MM
- Case Material:Stainless Steel
- Dial Size:28 MM
- Case Thickness:8 MM
- Water Resistance Depth:3 ATM', '460.90', 1, '2017-01-23 12:29:34', '2017-01-23 12:29:34'),

(42, 'UGG Fluffette', 'UGG slippers are an essential in any cold weather wardrobe, and UGG have a diverse range of designs for you to choose from. Whether a slip-on style or a knee-high pair, our collection won’t fail to provide you with ultimate comfort when the temperature drops.

- Genuine leather upper; fluffy funish
- Pure wool lining
- Beige and brown leopard print
- Classic slipper design
- Rubber sole', '460.90', 1, '2017-01-23 12:29:36', '2017-01-23 12:29:36'),

(43, 'URBAN ORIGINALS My World', 'The My World Tote by Urban Originals is a prime example of our brand ethos of luxury for less. This roomy tote opens up beautifully into 3 large compartments, and converts easily thanks to a removable shoulder strap. The gorgeous scaly finish has a varnish like shine.

- Light gold hardware
- 3x Large internal secure compartments
- Adjustable strap: 38-58cm- Dimensions: H29cm x W33 x D12.7cm
- PETA Certified Vegan leather', '99.90', 1, '2017-01-23 12:29:36', '2017-01-23 12:29:36'),

(44, 'VIZZANO Bumblebee Sneakers', 'Adorned with a bumblebee motif and side stripes, the Bumblebee Sneakers by Vizzano are fresh low-tops with personality.

- Faux leather upper
- Smooth white; red and green accents; gold-toned hardware
- Low profile
- Rounded toe
- Brand debossed metal bar to vamp
- Six-eye lacing system
- Striped grosgrain to sides
- Metal bumblebee motif to outer side
- Padded heel collar
- Lined and cushioned insole
- Rubberised outsole', '199.90', 1, '2017-01-23 12:29:37', '2017-01-23 12:29:37')

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
