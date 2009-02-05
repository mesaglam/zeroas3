﻿package com.dmotiko.luisbelgrano {
	
	import com.general.WebSite;
	import flash.net.URLRequest;
	import flash.display.*;
	import flash.events.*;

	
	public class LBSite
	extends WebSite {
		
		public static const HOME:String = "LBSITE_HOME";
		public static const PERFIL:String = "LBSITE_PERFIL";
		public static const PORTFOLIO:String = "LBSITE_PORTFOLIO";
		public static const CONTACTO:String = "LBSITE_CONTACTO";
				
		public static function getApp():LBSite {
			return LBSite(app);
		}
		
		public static function dummyContent():Array {
			var aPortfolio = new Array();
			
			var pItem:LBPortfolioItemData; 
			var aPhotos:Array;
			var aItems:Array;
			var photo:LBPortfolioPhoto;
						
			/* portfolio item 1 */
			aPhotos = new Array();
			photo = new LBPortfolioPhoto("1", '"En la estación"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-1_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-1_zoom.png", "portfolio/pintura/expoCentroCulturalSanTelmo/megaZoom/P-ECST-3_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photo = new LBPortfolioPhoto("1", '"En la estación"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-1_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-1_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photo = new LBPortfolioPhoto("1", '"En la estación"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-1_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-1_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			pItem = new LBPortfolioItemData("1", "Dec.Interior", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 2 */
			pItem = new LBPortfolioItemData("2", "Dec.Locales", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 3 */
			pItem = new LBPortfolioItemData("3", "Escenografía", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 4 */
			pItem = new LBPortfolioItemData("4", "Marketing", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 5 */
			pItem = new LBPortfolioItemData("5", "Navidad", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 6 */
			pItem = new LBPortfolioItemData("6", "Pinturas", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 7 */
			pItem = new LBPortfolioItemData("7", "Taller", aPhotos);
			aPortfolio.push(pItem);
			
			/* portfolio item 8 */
			pItem = new LBPortfolioItemData("8", "Varios shop", aPhotos, new Array( aPortfolio[0], aPortfolio[1], aPortfolio[2]) );
			aPortfolio.push(pItem);
			
			return aPortfolio;
		}
		
		private var aPortfolio:Array;
		private var mainClip:MovieClip;
		
		public function LBSite() {
			super();
			isFullFlash();
		}
			
		override protected function loadExternalContent():void {
			aPortfolio = new Array();
			
			var pItem:LBPortfolioItemData; 
			var aPhotos:Array;
			var aItems:Array;
			var aSubItems:Array;
			var photo:LBPortfolioPhoto;
			var photoID:Number = 0;
			var sectionID:Number = 0;
			
			
			/* portfolio item 1 */
			
			aSubItems = new Array();
			
			/*subitem 1*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Fachada decorada del Buenos Aires Design.", "", "portfolio/navidad/bsAsDesign/minis/N-BD-1_mini.jpg", "portfolio/navidad/bsAsDesign/zoom/N-BD-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Fachada decorada del Buenos Aires Design.", "", "portfolio/navidad/bsAsDesign/minis/N-BD-2_mini.jpg", "portfolio/navidad/bsAsDesign/zoom/N-BD-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "BsAs Design", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 1 */
			/*subitem 2*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Cartel externo.", "", "portfolio/navidad/escobar/minis/N-E-1_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Galería del shopping.", "", "portfolio/navidad/escobar/minis/N-E-2_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Pápa Noel en el bosque con los duendes que lo ayudaban con los regalos.", "", "portfolio/navidad/escobar/minis/N-E-3_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Pápa Noel en el bosque con los duendes que lo ayudaban con los regalos.", "", "portfolio/navidad/escobar/minis/N-E-4_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Pápa Noel en el bosque con los duendes que lo ayudaban con los regalos.", "", "portfolio/navidad/escobar/minis/N-E-5_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Pápa Noel en el bosque con los duendes que lo ayudaban con los regalos.", "", "portfolio/navidad/escobar/minis/N-E-6_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Pápa Noel en el bosque con los duendes que lo ayudaban con los regalos.", "", "portfolio/navidad/escobar/minis/N-E-7_mini.jpg", "portfolio/navidad/escobar/zoom/N-E-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Escobar", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 2 */
			/*subitem 3*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Estandartes Navideños de telas en el Mall.", "", "portfolio/navidad/lomasCenter/minis/N-LC-1_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Delfines de la fuente con gorros navideños.", "", "portfolio/navidad/lomasCenter/minis/N-LC-2_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del bosque de Papá Noel.", "", "portfolio/navidad/lomasCenter/minis/N-LC-3_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Cartel interno.", "", "portfolio/navidad/lomasCenter/minis/N-LC-4_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Estandartes Navideños de telas en el Mall.", "", "portfolio/navidad/lomasCenter/minis/N-LC-5_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del bosque de Papá Noel.", "", "portfolio/navidad/lomasCenter/minis/N-LC-6_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Casita de Papá Noel en la palmera.", "", "portfolio/navidad/lomasCenter/minis/N-LC-7_mini.jpg", "portfolio/navidad/lomasCenter/zoom/N-LC-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Lomas Center", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 3 */
			/*subitem 4*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Casa y trineo de Papá Noel con duendes.", "", "portfolio/navidad/palermo/minis/N-P-1_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalle de un duende.", "", "portfolio/navidad/palermo/minis/N-P-2_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Adornos en columnas.", "", "portfolio/navidad/palermo/minis/N-P-3_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Papá Noel.", "", "portfolio/navidad/palermo/minis/N-P-4_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la casa de Papá Noel.", "", "portfolio/navidad/palermo/minis/N-P-5_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Móviles de estrellas, lunas y soles con gorros navideños.", "", "portfolio/navidad/palermo/minis/N-P-6_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la ambientación “La cocina Navideña”.", "", "portfolio/navidad/palermo/minis/N-P-7_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la ambientación “La cocina Navideña”.", "", "portfolio/navidad/palermo/minis/N-P-8_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la ambientación “La cocina Navideña”.", "", "portfolio/navidad/palermo/minis/N-P-9_mini.jpg", "portfolio/navidad/palermo/zoom/N-P-9_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
									
			pItem = new LBPortfolioItemData(sectionID as String, "Palermo", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 4 */
			/*subitem 5*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Árbol Navideño de 5 mts con el trono.", "portfolio/navidad/parqueBrown/minis/N-PB-1_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Detalles de los animalitos del bosque.", "portfolio/navidad/parqueBrown/minis/N-PB-2_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Árbol Navideño de 5 mts con el trono.", "portfolio/navidad/parqueBrown/minis/N-PB-3_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Carteles decorativos.", "portfolio/navidad/parqueBrown/minis/N-PB-4_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Detalles de los animalitos del bosque.", "portfolio/navidad/parqueBrown/minis/N-PB-5_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Carteles decorativos.", "portfolio/navidad/parqueBrown/minis/N-PB-6_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Decoración espácio aereo y marquesinas.", "portfolio/navidad/parqueBrown/minis/N-PB-7_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño."', "Árbol Navideño de 5 mts con el trono.", "portfolio/navidad/parqueBrown/minis/N-PB-8_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Huerta de Papá Noel."', "Vista general de la ambientación.", "portfolio/navidad/parqueBrown/minis/N-PB-9_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-9_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Huerta de Papá Noel."', "Papá Noel tomando mate mientras los Conejos cosechan zanahorias.", "portfolio/navidad/parqueBrown/minis/N-PB-10_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-10_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Huerta de Papá Noel."', "Detalle de las lechugas.", "portfolio/navidad/parqueBrown/minis/N-PB-11_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-11_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Huerta de Papá Noel."', "Vista general de la ambientación.", "portfolio/navidad/parqueBrown/minis/N-PB-12_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-12_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Huerta de Papá Noel."', "Vista aérea.", "portfolio/navidad/parqueBrown/minis/N-PB-13_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-13_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Bosque Navideño"', "Móvil aéreo de lunas, estrellas y soles con gorros navideños.", "portfolio/navidad/parqueBrown/minis/N-PB-14_mini.jpg", "portfolio/navidad/parqueBrown/zoom/N-PB-14_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Parque Brown", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 5 */
			/*subitem 6*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, 'Trineos colgantes.', "", "portfolio/navidad/plazaOeste/minis/N-PO-1_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Trineos colgantes.', "", "portfolio/navidad/plazaOeste/minis/N-PO-2_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Móvil aéreo de estrellas.', "", "portfolio/navidad/plazaOeste/minis/N-PO-3_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Trineos colgantes.', "", "portfolio/navidad/plazaOeste/minis/N-PO-4_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Casa de Papá Noel con nieve.', "", "portfolio/navidad/plazaOeste/minis/N-PO-5_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Casa de Papá Noel en el escenario.', "", "portfolio/navidad/plazaOeste/minis/N-PO-6_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Detalle del paisaje de fondo y del Molino de agua.', "", "portfolio/navidad/plazaOeste/minis/N-PO-7_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Trineos colgantes.', "", "portfolio/navidad/plazaOeste/minis/N-PO-8_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;photo = new LBPortfolioPhoto(photoID as String, 'Móvil aéreo de árbol con adornos navideños.', "", "portfolio/navidad/plazaOeste/minis/N-PO-9_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-9_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photoID++;photo = new LBPortfolioPhoto(photoID as String, 'Estandarte de tela pintada con motivo navideño.', "", "portfolio/navidad/plazaOeste/minis/N-PO-10_mini.jpg", "portfolio/navidad/plazaOeste/zoom/N-PO-10_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Plaza Oeste", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 6 */
			/*subitem 7*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, 'Columnas con estandartes navideños.', "", "portfolio/navidad/quilmes/minis/N-Q-1_mini.jpg", "portfolio/navidad/quilmes/zoom/N-Q-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Papá Noel colgando de una tela.', "", "portfolio/navidad/quilmes/minis/N-Q-2_mini.jpg", "portfolio/navidad/quilmes/zoom/N-Q-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Columnas con estandartes navideños.', "", "portfolio/navidad/quilmes/minis/N-Q-3_mini.jpg", "portfolio/navidad/quilmes/zoom/N-Q-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'Detalle de la decoración del bosque de Papá Noel.', "", "portfolio/navidad/quilmes/minis/N-Q-4_mini.jpg", "portfolio/navidad/quilmes/zoom/N-Q-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
									
			pItem = new LBPortfolioItemData(sectionID as String, "Quilmes", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 7 */
			/*subitem 8*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, 'La cabaña en el bosque de Papá Noel en el Portal de Rosario.', "", "portfolio/navidad/rosario/minis/N-R-1_mini.jpg", "portfolio/navidad/rosario/zoom/N-R-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, 'La cabaña en el bosque de Papá Noel en el Portal de Rosario.', "", "portfolio/navidad/rosario/minis/N-R-2_mini.jpg", "portfolio/navidad/rosario/zoom/N-R-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
												
			pItem = new LBPortfolioItemData(sectionID as String, "Rosario", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 8 */
			/*subitem 9*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Duenda volando en ala delta.", "portfolio/navidad/unicenter/minis/N-U-1_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Duende en una fuente haciendo surf. ", "portfolio/navidad/unicenter/minis/N-U-2_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Móvil de aviones.", "portfolio/navidad/unicenter/minis/N-U-3_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Vista general del Pesebre con 25 figuras.", "portfolio/navidad/unicenter/minis/N-U-4_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Papá Noel en la fuente sin sus botas remojándose los pies.", "portfolio/navidad/unicenter/minis/N-U-5_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Detalle con una duenda mimosa.", "portfolio/navidad/unicenter/minis/N-U-6_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Detalle del pesebre.", "portfolio/navidad/unicenter/minis/N-U-7_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Seamos un poco duendes"', "Duende volando en ala delta.", "portfolio/navidad/unicenter/minis/N-U-8_mini.jpg", "portfolio/navidad/unicenter/zoom/N-U-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Unicenter", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 9 */
			
			pItem = new LBPortfolioItemData(sectionID as String, "Navidad", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			
			/*
			 * 
			 * END SECTION 1
			 * 
			 * */
			
			 /* portfolio item 2 */
			aSubItems = new Array();
			
			/*subitem 1*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Cartel exterior del Restaurante Casimiro de Caballito.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-1_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-2_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-3_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-4_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-5_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-6_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-7_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroCaballito/minis/DL-CC-8_mini.jpg", "portfolio/decLocales/casimiroCaballito/zoom/DL-CC-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Casimiro Caballito", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 1 */
			
			/*subitem 2*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-1_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-2_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-3_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-4_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-5_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-6_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Detalles de la decoración del sector de juegos.", "", "portfolio/decLocales/casimiroSanIsidro/minis/DL-CS-7_mini.jpg", "portfolio/decLocales/casimiroSanIsidro/zoom/DL-CS-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			
			
			pItem = new LBPortfolioItemData(sectionID as String, "Casimiro San Isidro", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 2 */
			
			/*subitem 3*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Decoración de acceso y piñata para local de fiestas infantiles.", "", "portfolio/decLocales/estacionJupiter/minis/DL-EJ-1_mini.jpg", "portfolio/decLocales/estacionJupiter/zoom/DL-EJ-1_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración de acceso y piñata para local de fiestas infantiles.", "", "portfolio/decLocales/estacionJupiter/minis/DL-EJ-2_mini.jpg", "portfolio/decLocales/estacionJupiter/zoom/DL-EJ-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Estación Jupiter", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 3 */
			
			pItem = new LBPortfolioItemData(sectionID as String, "Dec.Locales", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			
			/*
			 * 
			 * END ITEM 2
			 * 
			 * */
			
			 /* portfolio item 3 */
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Portal de la panadería artesanal en el ZOO de Bs As para Bimbo.", "", "portfolio/marketing/minis/M-1_mini.jpg", "portfolio/marketing/zoom/M-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Portal de la panadería artesanal en el ZOO de Bs As para Bimbo.", "", "portfolio/marketing/minis/M-2_mini.jpg", "portfolio/marketing/zoom/M-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Autos de F1 Ferrari, para stand de CASE en Expo Chacra.", "", "portfolio/marketing/minis/M-3_mini.jpg", "portfolio/marketing/zoom/M-3_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Autos de F1 Ferrari, para stand de CASE en Expo Chacra.", "", "portfolio/marketing/minis/M-4_mini.jpg", "portfolio/marketing/zoom/M-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Muñecos para vidrieras de Christian Lacroix.", "", "portfolio/marketing/minis/M-5_mini.jpg", "portfolio/marketing/zoom/M-5_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Muñecos para vidrieras de Christian Lacroix.", "", "portfolio/marketing/minis/M-6_mini.jpg", "portfolio/marketing/zoom/M-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Vidrieras navideñas para Paula Cahen D´anvers.", "", "portfolio/marketing/minis/M-7_mini.jpg", "portfolio/marketing/zoom/M-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Vidrieras navideñas para Paula Cahen D´anvers.", "", "portfolio/marketing/minis/M-8_mini.jpg", "portfolio/marketing/zoom/M-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Quesos para stand de Santa Rosa.", "", "portfolio/marketing/minis/M-9_mini.jpg", "portfolio/marketing/zoom/M-9_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Periscopio para promoción de la película 571.", "", "portfolio/marketing/minis/M-10_mini.jpg", "portfolio/marketing/zoom/M-10_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Gigantismo del envase de chupetines Arquito giratorio.", "", "portfolio/marketing/minis/M-11_mini.jpg", "portfolio/marketing/zoom/M-11_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Caballo para la pista del Club Hípico Argentino.", "", "portfolio/marketing/minis/M-12_mini.jpg", "portfolio/marketing/zoom/M-12_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Papá Noeles para stands de venta de Mantecol.", "", "portfolio/marketing/minis/M-13_mini.jpg", "portfolio/marketing/zoom/M-13_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Tarjeta pintada sobre goma espuma para promociones en la playa.", "", "portfolio/marketing/minis/M-14_mini.jpg", "portfolio/marketing/zoom/M-14_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Esculturas de pareja Indú para bienvenida.", "", "portfolio/marketing/minis/M-15_mini.jpg", "portfolio/marketing/zoom/M-15_zoom.jpg", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Gigantismo del paquete de pastillas MenthoPlus con ruleta.", "", "portfolio/marketing/minis/M-16_mini.jpg", "portfolio/marketing/zoom/M-16_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Frascos de pintura para local de Mitsubishi. ", "", "portfolio/marketing/minis/M-17_mini.jpg", "portfolio/marketing/zoom/M-17_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Marketing", aPhotos);
			aPortfolio.push(pItem);
			sectionID++;
			
			/*
			 *  END ITEM 3
			 * 
			 * */
			
			 /* portfolio item 4 */
			aSubItems = new Array();
			
			/*subitem 1*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-1_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-2_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-3_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-4_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-5_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-6_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-7_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-7_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decorado para producción de fotos para la revista del Club del Vino.", "", "portfolio/escenografias/clubDelVino/minis/E-CV-8_mini.jpg", "portfolio/escenografias/clubDelVino/zoom/E-CV-8_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Club del Vino", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 1 */
			
			/*subitem 2*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Objetos para la escenografía de Dibu III.", "", "portfolio/escenografias/dibu/minis/E-D-1_mini.jpg", "portfolio/escenografias/dibu/zoom/E-D-1_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Objetos para la escenografía de Dibu III.", "", "portfolio/escenografias/dibu/minis/E-D-2_mini.jpg", "portfolio/escenografias/dibu/zoom/E-D-2_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Objetos para la escenografía de Dibu III.", "", "portfolio/escenografias/dibu/minis/E-D-3_mini.jpg", "portfolio/escenografias/dibu/zoom/E-D-3_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Dibu", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 2 */
			
			/*subitem 3*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Pintura y objetos para escenografía del programa Sin Complejos, Canal 13.", "", "portfolio/escenografias/varios/minis/E-V-1_mini.jpg", "portfolio/escenografias/varios/zoom/E-V-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pintura y objetos para escenografía del programa Sin Complejos, Canal 13.", "", "portfolio/escenografias/varios/minis/E-V-2_mini.jpg", "portfolio/escenografias/varios/zoom/E-V-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Mural con pinturas de Lipchestein para programa de cable.", "", "portfolio/escenografias/varios/minis/E-V-3_mini.jpg", "portfolio/escenografias/varios/zoom/E-V-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Mural de fondo para video musical de Awankana.", "", "portfolio/escenografias/varios/minis/E-V-4_mini.jpg", "portfolio/escenografias/varios/zoom/E-V-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Torta de 3.5m de h para publicidad de Quilmes.", "", "portfolio/escenografias/varios/minis/E-V-5_mini.jpg", "portfolio/escenografias/varios/zoom/E-V-5_zoom.png", "", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
									
			pItem = new LBPortfolioItemData(sectionID as String, "Varios", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 3 */
			
			pItem = new LBPortfolioItemData(sectionID as String, "Escenografías", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			
			/* 
			 *   end Item 4 
			 * 
			 * 
			 */
			
			/* portfolio item 5 */
			aSubItems = new Array();
			
			/*subitem 1*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, '"En la estación"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-1_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-1_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Grafismos en desuso"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-2_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-2_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Nocturnos en rojo"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-3_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-3_zoom.png", "portfolio/pintura/expoCentroCulturalSanTelmo/megaZoom/P-ECST-3_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Paisaje anterior"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-4_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-4_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Río rojo"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-5_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-5_zoom.png", "portfolio/pintura/expoCentroCulturalSanTelmo/megaZoom/P-ECST-5_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Señales en el cielo"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-6_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-6_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, '"Señales"', "", "portfolio/pintura/expoCentroCulturalSanTelmo/minis/P-ECST-7_mini.jpg", "portfolio/pintura/expoCentroCulturalSanTelmo/zoom/P-ECST-7_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "CC San Telmo", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 1 */
			/*subitem 2*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Barrio abierto", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-1_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-1_zoom.png", "portfolio/pintura/expoMuseoPueyrredon/megaZoom/P-EMP-1_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Custodios", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-2_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-2_zoom.png", "portfolio/pintura/expoMuseoPueyrredon/megaZoom/P-EMP-2_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Deshumanizado", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-3_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-3_zoom.png", "portfolio/pintura/expoMuseoPueyrredon/megaZoom/P-EMP-3_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "El Sr. Nos ilumina", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-4_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-4_zoom.png", "portfolio/pintura/expoMuseoPueyrredon/megaZoom/P-EMP-4_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Refugiados", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-5_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-5_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Tierra asolada", "", "portfolio/pintura/expoMuseoPueyrredon/minis/P-EMP-6_mini.jpg", "portfolio/pintura/expoMuseoPueyrredon/zoom/P-EMP-6_zoom.png", "portfolio/pintura/expoMuseoPueyrredon/megaZoom/P-EMP-6_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Museo Pueyrredón", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 2 */
			/*subitem 3*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Figura Roja", "", "portfolio/pintura/figuras/minis/P-F-1_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-1_zoom.png", "portfolio/pintura/figuras/megaZoom/P-F-1_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Cariatide", "", "portfolio/pintura/figuras/minis/P-F-2_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-2_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Ensimismada", "", "portfolio/pintura/figuras/minis/P-F-3_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-3_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Figura azul", "", "portfolio/pintura/figuras/minis/P-F-4_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-4_zoom.png", "portfolio/pintura/figuras/megaZoom/P-F-4_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Figura en el lago", "", "portfolio/pintura/figuras/minis/P-F-5_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-5_zoom.png", "portfolio/pintura/figuras/megaZoom/P-F-5_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Figura recostada", "", "portfolio/pintura/figuras/minis/P-F-6_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-6_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Musa sorprendida", "", "portfolio/pintura/figuras/minis/P-F-7_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-7_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Prerafaelista", "", "portfolio/pintura/figuras/minis/P-F-8_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-8_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Seres especulares", "", "portfolio/pintura/figuras/minis/P-F-9_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-9_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Seres etéreos", "", "portfolio/pintura/figuras/minis/P-F-10_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-10_zoom.png", "portfolio/pintura/figuras/megaZoom/P-F-10_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Suburbio", "", "portfolio/pintura/figuras/minis/P-F-11_mini.jpg", "portfolio/pintura/figuras/zoom/P-F-11_zoom.png", "portfolio/pintura/figuras/megaZoom/P-F-11_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
						
			pItem = new LBPortfolioItemData(sectionID as String, "Figuras", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 3 */
			/*subitem 4*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Caída ángel", "", "portfolio/pintura/otros/minis/P-O-1_mini.jpg", "portfolio/pintura/otros/zoom/P-O-1_zoom.png", "portfolio/pintura/otros/megaZoom/P-O-1_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Dos pescadores", "", "portfolio/pintura/otros/minis/P-O-2_mini.jpg", "portfolio/pintura/otros/zoom/P-O-2_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Espacio interior", "", "portfolio/pintura/otros/minis/P-O-3_mini.jpg", "portfolio/pintura/otros/zoom/P-O-3_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Flotando va", "", "portfolio/pintura/otros/minis/P-O-4_mini.jpg", "portfolio/pintura/otros/zoom/P-O-4_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Interludio", "", "portfolio/pintura/otros/minis/P-O-5_mini.jpg", "portfolio/pintura/otros/zoom/P-O-5_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Lírica", "", "portfolio/pintura/otros/minis/P-O-6_mini.jpg", "portfolio/pintura/otros/zoom/P-O-6_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Melancólica", "", "portfolio/pintura/otros/minis/P-O-7_mini.jpg", "portfolio/pintura/otros/zoom/P-O-7_zoom.png", "portfolio/pintura/otros/megaZoom/P-O-7_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Paisaje apocalíptico", "", "portfolio/pintura/otros/minis/P-O-8_mini.jpg", "portfolio/pintura/otros/zoom/P-O-8_zoom.png", "portfolio/pintura/otros/megaZoom/P-O-8_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pescador", "", "portfolio/pintura/otros/minis/P-O-9_mini.jpg", "portfolio/pintura/otros/zoom/P-O-9_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Sillas", "", "portfolio/pintura/otros/minis/P-O-10_mini.jpg", "portfolio/pintura/otros/zoom/P-O-10_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Vuelo bestial", "", "portfolio/pintura/otros/minis/P-O-11_mini.jpg", "portfolio/pintura/otros/zoom/P-O-11_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
									
			pItem = new LBPortfolioItemData(sectionID as String, "Otros", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 4 */
			/*subitem 5*/
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Bosque rivereño", "", "portfolio/pintura/paisajes/minis/P-P-1_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-1_zoom.png", "portfolio/pintura/paisajes/megaZoom/P-P-1_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Después de la tormenta", "", "portfolio/pintura/paisajes/minis/P-P-2_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-2_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Horizonte", "", "portfolio/pintura/paisajes/minis/P-P-3_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-3_zoom.png", "portfolio/pintura/paisajes/megaZoom/P-P-3_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Jardín del Edén", "", "portfolio/pintura/paisajes/minis/P-P-4_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-4_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "La reconquista", "", "portfolio/pintura/paisajes/minis/P-P-5_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-5_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Paisaje inconcluso", "", "portfolio/pintura/paisajes/minis/P-P-6_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-6_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Paisaje ventoso", "", "portfolio/pintura/paisajes/minis/P-P-7_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-7_zoom.png", "portfolio/pintura/paisajes/megaZoom/P-P-7_megazoom.jpg", LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Playa", "", "portfolio/pintura/paisajes/minis/P-P-8_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-8_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Tigre barco 1", "", "portfolio/pintura/paisajes/minis/P-P-9_mini.jpg", "portfolio/pintura/paisajes/zoom/P-P-9_zoom.png", undefined, LBPortfolioPhoto.PHOTO_TRANSPARENT);
			aPhotos.push(photo);
			photoID++;
									
			pItem = new LBPortfolioItemData(sectionID as String, "Paisajes", aPhotos);
			aSubItems.push(pItem);
			sectionID++;
			/* end subItem 5 */
						
			pItem = new LBPortfolioItemData(sectionID as String, "Pinturas", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			/* 
			 *   end Item 5
			 * 
			 * 
			 */
			 	
			  /* portfolio item 6 */
			aSubItems = new Array();
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Cancha de futbol para día del padre en Plaza Oeste 06", "", "portfolio/variosShop/minis/V-1_mini.jpg", "portfolio/variosShop/zoom/V-1_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración Otoño Invierno 03 de Portal de Palermo", "", "portfolio/variosShop/minis/V-2_mini.jpg", "portfolio/variosShop/zoom/V-2_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración Otoño Invierno 03 de Portal de Palermo.", "", "portfolio/variosShop/minis/V-3_mini.jpg", "portfolio/variosShop/zoom/V-3_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración Otoño Invierno 03 de Portal de Palermo.", "", "portfolio/variosShop/minis/V-4_mini.jpg", "portfolio/variosShop/zoom/V-4_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración Otoño Invierno 03 de Portal de Palermo.", "", "portfolio/variosShop/minis/V-5_mini.jpg", "portfolio/variosShop/zoom/V-5_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Decoración Otoño Invierno 03 de Portal de Palermo.", "", "portfolio/variosShop/minis/V-6_mini.jpg", "portfolio/variosShop/zoom/V-6_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Carteles Decoración Otoño Invierno 03 de Plaza Oeste", "", "portfolio/variosShop/minis/V-7_mini.jpg", "portfolio/variosShop/zoom/V-7_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Carteles Decoración Otoño Invierno 03 de Plaza Oeste", "", "portfolio/variosShop/minis/V-8_mini.jpg", "portfolio/variosShop/zoom/V-8_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pascuas, Decoraciones para stands promocionales de Pascuas en Unicenter, Plaza Oeste y Portal Rosario.", "", "portfolio/variosShop/minis/V-9_mini.jpg", "portfolio/variosShop/zoom/V-9_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pascuas, Decoraciones para stands promocionales de Pascuas en Unicenter, Plaza Oeste y Portal Rosario.", "", "portfolio/variosShop/minis/V-10_mini.jpg", "portfolio/variosShop/zoom/V-10_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pascuas, Decoraciones para stands promocionales de Pascuas en Unicenter, Plaza Oeste y Portal Rosario.", "", "portfolio/variosShop/minis/V-11_mini.jpg", "portfolio/variosShop/zoom/V-11_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Animales para decoración día del Padre en Unicenter.", "", "portfolio/variosShop/minis/V-12_mini.jpg", "portfolio/variosShop/zoom/V-12_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Promoción de invierno para Lomas Center.", "", "portfolio/variosShop/minis/V-13_mini.jpg", "portfolio/variosShop/zoom/V-13_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
						 
			pItem = new LBPortfolioItemData(sectionID as String, "Varios Shop", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			/* 
			 *   end Item 6
			 * 
			 * 
			 */
			 
			/* portfolio item 7 */
			aSubItems = new Array();
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Mural para cuarto de niños.", "", "portfolio/decInterior/minis/DI-1_mini.jpg", "portfolio/decInterior/zoom/DI-1_zoom.jpg", "", LBPortfolioPhoto.PHOTO_SQUARE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pintura decorativa sobre espejo y nicho de madera.", "", "portfolio/decInterior/minis/DI-2_mini.jpg", "portfolio/decInterior/zoom/DI-2_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Pintura decorativa en puerta de ascensor.", "", "portfolio/decInterior/minis/DI-3_mini.jpg", "portfolio/decInterior/zoom/DI-3_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Murales sobre paredes y armarios.", "", "portfolio/decInterior/minis/DI-4_mini.jpg", "portfolio/decInterior/zoom/DI-4_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Dorados a la hoja sobre marcos, baranda y chimenea.", "", "portfolio/decInterior/minis/DI-5_mini.jpg", "portfolio/decInterior/zoom/DI-5_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Dorados a la hoja sobre marcos, baranda y chimenea.", "", "portfolio/decInterior/minis/DI-6_mini.jpg", "portfolio/decInterior/zoom/DI-6_zoom.jpg", "", LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			
			pItem = new LBPortfolioItemData(sectionID as String, "Dec.Interior", aPhotos);
			aPortfolio.push(pItem);
			sectionID++;
			
			/*
			 * 
			 *  END ITEM 7
			 * 
			 * 
			 */
			
			/* portfolio item 8 */
			aSubItems = new Array();
			aPhotos = new Array();
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-1_mini.jpg", "portfolio/taller/zoom/T-1_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-2_mini.jpg", "portfolio/taller/zoom/T-2_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-3_mini.jpg", "portfolio/taller/zoom/T-3_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-4_mini.jpg", "portfolio/taller/zoom/T-4_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-5_mini.jpg", "portfolio/taller/zoom/T-5_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-6_mini.jpg", "portfolio/taller/zoom/T-6_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-7_mini.jpg", "portfolio/taller/zoom/T-7_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-8_mini.jpg", "portfolio/taller/zoom/T-8_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-9_mini.jpg", "portfolio/taller/zoom/T-9_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-10_mini.jpg", "portfolio/taller/zoom/T-10_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-11_mini.jpg", "portfolio/taller/zoom/T-11_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-11_mini.jpg", "portfolio/taller/zoom/T-11_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-12_mini.jpg", "portfolio/taller/zoom/T-12_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_VERTICAL);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-13_mini.jpg", "portfolio/taller/zoom/T-13_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			photo = new LBPortfolioPhoto(photoID as String, "Algunas fotos del taller con trabajos en distintas etapas de realización.", "", "portfolio/taller/minis/T-14_mini.jpg", "portfolio/taller/zoom/T-14_zoom.jpg", undefined, LBPortfolioPhoto.PHOTO_WIDE);
			aPhotos.push(photo);
			photoID++;
			 
			pItem = new LBPortfolioItemData(sectionID as String, "El Taller", aPhotos, aSubItems);
			aPortfolio.push(pItem);
			sectionID++;
			/* 
			 *   end Item 8
			 * 
			 * 
			 */
				
			this.externalContentLoaded();
		}
		
		override protected function externalContentLoaded():void {
			var mLoader:Loader = new Loader(); 
			var mRequest:URLRequest = new URLRequest("main.swf"+getNoCache()); 
			mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onCompleteHandler); 
			mLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgressHandler); 
			mLoader.load(mRequest);
			function onProgressHandler(loadEvent:ProgressEvent):void {
				var loadedbytes:uint = loadEvent.bytesLoaded;
				var totalbytes:uint = loadEvent.bytesTotal;
				var cargado:int = int(loadedbytes*100/totalbytes);
				if(getChildByName("loader")) getChildByName("loader").scaleX = cargado / 100;
				if (loadedbytes == totalbytes) {
					if(getChildByName("loader")) removeChild( getChildByName("loader"));
					if( getChildByName("loaderBar") ) removeChild( getChildByName("loaderBar") );
					if( getChildByName("loaderBar2") ) removeChild( getChildByName("loaderBar2") );
					if( getChildByName("loaderBar") ) removeChild( getChildByName("loaderText") );
				}
			}
			function onCompleteHandler(loadEvent:Event) {         
				setCenterClip(loadEvent.currentTarget.content.getChildByName("mcMask"));
				addChild(loadEvent.currentTarget.content);
				stage.dispatchEvent( new Event( Event.RESIZE ) );
			} 
			
		}
		
		public function getPortfolio():Array {
			return aPortfolio;
		}
		
	}
	
}