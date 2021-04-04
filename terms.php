<?php include 'config/declare.php'; ?>

<!-- a universal file that has all the classes included -->
<?php include 'config/classesGetter.php'; ?>

<!-- creating objects -->
<?php
  $universal = new universal;
  $avatar = new Avatar;
  $post = new post;
  $noti = new notifications;
  $message = new message;
?>

<?php
  $title = "{$noti->titleNoti()} terms • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, about";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<!-- including files for header of document -->
<?php
  if ($universal->isLoggedIn()) {
    include 'includes/header.php';
    include 'needs/heading.php';
    include 'needs/nav.php';
    include_once 'needs/search.php';
  } else if ($universal->isLoggedIn() == false) {
    include 'includes\index_header.php';
  }
?>

<div class="overlay"></div>
<div class="notify"><span></span></div>
<div class="ciphertext">

  

<h1>Horizon Terms of Service</h1>
<div class="maia-promo">
<p>This is an archived version of our Terms of Service. View the <a href="../../../../policies/terms/">current version</a> or <a href="../../../../policies/terms/archive/">all past versions</a>.</div>
<div class="legacy">
<p><b>Welcome to Horizon!</b>
<p><b>1. Your relationship with Horizon</b>
<blockquote>
<p>1.1 Your use of Horizon’s products, software, services and web sites (referred to collectively as the “Services” in this document and excluding any services provided to you by Horizon under a separate written agreement) is subject to the terms of a legal agreement between you and Horizon. “Horizon” means Horizon Inc., whose principal place of business is at 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States. This document explains how the agreement is made up, and sets out some of the terms of that agreement.
<p>1.2 Unless otherwise agreed in writing with Horizon, your agreement with Horizon will always include, at a minimum, the terms and conditions set out in this document. These are referred to below as the “Universal Terms”.
<p>1.3 Your agreement with Horizon will also include the terms of any Legal Notices applicable to the Services, in addition to the Universal Terms. All of these are referred to below as the “Additional Terms”. Where Additional Terms apply to a Service, these will be accessible for you to read either within, or through your use of, that Service.
<p>1.4 The Universal Terms, together with the Additional Terms, form a legally binding agreement between you and Horizon in relation to your use of the Services. It is important that you take the time to read them carefully. Collectively, this legal agreement is referred to below as the “Terms”.
<p>1.5 If there is any contradiction between what the Additional Terms say and what the Universal Terms say, then the Additional Terms shall take precedence in relation to that Service.</blockquote>
<p><b>2. Accepting the Terms</b>
<blockquote>
<p>2.1 In order to use the Services, you must first agree to the Terms. You may not use the Services if you do not accept the Terms.
<p>2.2 You can accept the Terms by:
<blockquote>
<p>(A) clicking to accept or agree to the Terms, where this option is made available to you by Horizon in the user interface for any Service; or
<p>(B) by actually using the Services. In this case, you understand and agree that Horizon will treat your use of the Services as acceptance of the Terms from that point onwards.</blockquote>
<p>2.3 You may not use the Services and may not accept the Terms if (a) you are not of legal age to form a binding contract with Horizon, or (b) you are a person barred from receiving the Services under the laws of the United States or other countries including the country in which you are resident or from which you use the Services.
<p>2.4 Before you continue, you should print off or save a local copy of the Universal Terms for your records.</blockquote>
<p><b>3. Language of the Terms</b>
<blockquote>
<p>3.1 Where Horizon has provided you with a translation of the English language version of the Terms, then you agree that the translation is provided for your convenience only and that the English language versions of the Terms will govern your relationship with Horizon.
<p>3.2 If there is any contradiction between what the English language version of the Terms says and what a translation says, then the English language version shall take precedence.</blockquote>
<p><b>4. Provision of the Services by Horizon</b>
<blockquote>
<p>4.1 Horizon has subsidiaries and affiliated legal entities around the world (“Subsidiaries and Affiliates”). Sometimes, these companies will be providing the Services to you on behalf of Horizon itself. You acknowledge and agree that Subsidiaries and Affiliates will be entitled to provide the Services to you.
<p>4.2 Horizon is constantly innovating in order to provide the best possible experience for its users. You acknowledge and agree that the form and nature of the Services which Horizon provides may change from time to time without prior notice to you.
<p>4.3 As part of this continuing innovation, you acknowledge and agree that Horizon may stop (permanently or temporarily) providing the Services (or any features within the Services) to you or to users generally at Horizon’s sole discretion, without prior notice to you. You may stop using the Services at any time. You do not need to specifically inform Horizon when you stop using the Services.
<p>4.4 You acknowledge and agree that if Horizon disables access to your account, you may be prevented from accessing the Services, your account details or any files or other content which is contained in your account.
<p>4.5 You acknowledge and agree that while Horizon may not currently have set a fixed upper limit on the number of transmissions you may send or receive through the Services or on the amount of storage space used for the provision of any Service, such fixed upper limits may be set by Horizon at any time, at Horizon’s discretion.</blockquote>
<p><b>5. Use of the Services by you</b>
<blockquote>
<p>5.1 In order to access certain Services, you may be required to provide information about yourself (such as identification or contact details) as part of the registration process for the Service, or as part of your continued use of the Services. You agree that any registration information you give to Horizon will always be accurate, correct and up to date.
<p>5.2 You agree to use the Services only for purposes that are permitted by (a) the Terms and (b) any applicable law, regulation or generally accepted practices or guidelines in the relevant jurisdictions (including any laws regarding the export of data or software to and from the United States or other relevant countries).
<p>5.3 You agree not to access (or attempt to access) any of the Services by any means other than through the interface that is provided by Horizon, unless you have been specifically allowed to do so in a separate agreement with Horizon. You specifically agree not to access (or attempt to access) any of the Services through any automated means (including use of scripts or web crawlers) and shall ensure that you comply with the instructions set out in any robots.txt file present on the Services.
<p>5.4 You agree that you will not engage in any activity that interferes with or disrupts the Services (or the servers and networks which are connected to the Services).
<p>5.5 Unless you have been specifically permitted to do so in a separate agreement with Horizon, you agree that you will not reproduce, duplicate, copy, sell, trade or resell the Services for any purpose.
<p>5.6 You agree that you are solely responsible for (and that Horizon has no responsibility to you or to any third party for) any breach of your obligations under the Terms and for the consequences (including any loss or damage which Horizon may suffer) of any such breach.</blockquote>
<p><b>6. Your passwords and account security</b>
<blockquote>
<p>6.1 You agree and understand that you are responsible for maintaining the confidentiality of passwords associated with any account you use to access the Services.
<p>6.2 Accordingly, you agree that you will be solely responsible to Horizon for all activities that occur under your account.
<p>6.3 If you become aware of any unauthorized use of your password or of your account, you agree to notify Horizon immediately at <a href="http://www.Horizon.com/support/accounts/bin/answer.py?answer=58585">http://www.Horizon.com/support/accounts/bin/answer.py?answer=58585</a>.</blockquote>
<p><b>7. Privacy and your personal information</b>
<blockquote>
<p>7.1 For information about Horizon’s data protection practices, please read Horizon’s privacy policy at <a href="http://www.Horizon.com/privacy.html">http://www.Horizon.com/privacy.html</a>. This policy explains how Horizon treats your personal information, and protects your privacy, when you use the Services.
<p>7.2 You agree to the use of your data in accordance with Horizon’s privacy policies.</blockquote>
<p><b>8. Content in the Services</b>
<blockquote>
<p>8.1 You understand that all information (such as data files, written text, computer software, music, audio files or other sounds, photographs, videos or other images) which you may have access to as part of, or through your use of, the Services are the sole responsibility of the person from which such content originated. All such information is referred to below as the “Content”.
<p>8.2 You should be aware that Content presented to you as part of the Services, including but not limited to advertisements in the Services and sponsored Content within the Services may be protected by intellectual property rights which are owned by the sponsors or advertisers who provide that Content to Horizon (or by other persons or companies on their behalf). You may not modify, rent, lease, loan, sell, distribute or create derivative works based on this Content (either in whole or in part) unless you have been specifically told that you may do so by Horizon or by the owners of that Content, in a separate agreement.
<p>8.3 Horizon reserves the right (but shall have no obligation) to pre-screen, review, flag, filter, modify, refuse or remove any or all Content from any Service. For some of the Services, Horizon may provide tools to filter out explicit sexual content. These tools include the SafeSearch preference settings (see <a href="http://www.Horizon.com/help/customize.html#safe">http://www.Horizon.com/help/customize.html#safe</a>). In addition, there are commercially available services and software to limit access to material that you may find objectionable.
<p>8.4 You understand that by using the Services you may be exposed to Content that you may find offensive, indecent or objectionable and that, in this respect, you use the Services at your own risk.
<p>8.5 You agree that you are solely responsible for (and that Horizon has no responsibility to you or to any third party for) any Content that you create, transmit or display while using the Services and for the consequences of your actions (including any loss or damage which Horizon may suffer) by doing so.</blockquote>
<p><b>9. Proprietary rights</b>
<blockquote>
<p>9.1 You acknowledge and agree that Horizon (or Horizon’s licensors) own all legal right, title and interest in and to the Services, including any intellectual property rights which subsist in the Services (whether those rights happen to be registered or not, and wherever in the world those rights may exist). You further acknowledge that the Services may contain information which is designated confidential by Horizon and that you shall not disclose such information without Horizon’s prior written consent.
<p>9.2 Unless you have agreed otherwise in writing with Horizon, nothing in the Terms gives you a right to use any of Horizon’s trade names, trade marks, service marks, logos, domain names, and other distinctive brand features.
<p>9.3 If you have been given an explicit right to use any of these brand features in a separate written agreement with Horizon, then you agree that your use of such features shall be in compliance with that agreement, any applicable provisions of the Terms, and Horizon's brand feature use guidelines as updated from time to time. These guidelines can be viewed online at <a href="http://www.Horizon.com/permissions/guidelines.html">http://www.Horizon.com/permissions/guidelines.html</a> (or such other URL as Horizon may provide for this purpose from time to time).
<p>9.4 Other than the limited license set forth in Section 11, Horizon acknowledges and agrees that it obtains no right, title or interest from you (or your licensors) under these Terms in or to any Content that you submit, post, transmit or display on, or through, the Services, including any intellectual property rights which subsist in that Content (whether those rights happen to be registered or not, and wherever in the world those rights may exist). Unless you have agreed otherwise in writing with Horizon, you agree that you are responsible for protecting and enforcing those rights and that Horizon has no obligation to do so on your behalf.
<p>9.5 You agree that you shall not remove, obscure, or alter any proprietary rights notices (including copyright and trade mark notices) which may be affixed to or contained within the Services.
<p>9.6 Unless you have been expressly authorized to do so in writing by Horizon, you agree that in using the Services, you will not use any trade mark, service mark, trade name, logo of any company or organization in a way that is likely or intended to cause confusion about the owner or authorized user of such marks, names or logos.</blockquote>
<p><b>10. License from Horizon</b>
<blockquote>
<p>10.1 Horizon gives you a personal, worldwide, royalty-free, non-assignable and non-exclusive license to use the software provided to you by Horizon as part of the Services as provided to you by Horizon (referred to as the “Software” below). This license is for the sole purpose of enabling you to use and enjoy the benefit of the Services as provided by Horizon, in the manner permitted by the Terms.
<p>10.2 You may not (and you may not permit anyone else to) copy, modify, create a derivative work of, reverse engineer, decompile or otherwise attempt to extract the source code of the Software or any part thereof, unless this is expressly permitted or required by law, or unless you have been specifically told that you may do so by Horizon, in writing.
<p>10.3 Unless Horizon has given you specific written permission to do so, you may not assign (or grant a sub-license of) your rights to use the Software, grant a security interest in or over your rights to use the Software, or otherwise transfer any part of your rights to use the Software.</blockquote>
<p><b>11. Content license from you</b>
<blockquote>
<p>11.1 You retain copyright and any other rights you already hold in Content which you submit, post or display on or through, the Services. By submitting, posting or displaying the content you give Horizon a perpetual, irrevocable, worldwide, royalty-free, and non-exclusive license to reproduce, adapt, modify, translate, publish, publicly perform, publicly display and distribute any Content which you submit, post or display on or through, the Services. This license is for the sole purpose of enabling Horizon to display, distribute and promote the Services and may be revoked for certain Services as defined in the Additional Terms of those Services.
<p>11.2 You agree that this license includes a right for Horizon to make such Content available to other companies, organizations or individuals with whom Horizon has relationships for the provision of syndicated services, and to use such Content in connection with the provision of those services.
<p>11.3 You understand that Horizon, in performing the required technical steps to provide the Services to our users, may (a) transmit or distribute your Content over various public networks and in various media; and (b) make such changes to your Content as are necessary to conform and adapt that Content to the technical requirements of connecting networks, devices, services or media. You agree that this license shall permit Horizon to take these actions.
<p>11.4 You confirm and warrant to Horizon that you have all the rights, power and authority necessary to grant the above license.</blockquote>
<p><b>12. Software updates</b>
<blockquote>
<p>12.1 The Software which you use may automatically download and install updates from time to time from Horizon. These updates are designed to improve, enhance and further develop the Services and may take the form of bug fixes, enhanced functions, new software modules and completely new versions. You agree to receive such updates (and permit Horizon to deliver these to you) as part of your use of the Services.</blockquote>
<p><b>13. Ending your relationship with Horizon</b>
<blockquote>
<p>13.1 The Terms will continue to apply until terminated by either you or Horizon as set out below.
<p>13.2 If you want to terminate your legal agreement with Horizon, you may do so by (a) notifying Horizon at any time and (b) closing your accounts for all of the Services which you use, where Horizon has made this option available to you. Your notice should be sent, in writing, to Horizon’s address which is set out at the beginning of these Terms.
<p>13.3 Horizon may at any time, terminate its legal agreement with you if:
<blockquote>
<p>(A) you have breached any provision of the Terms (or have acted in manner which clearly shows that you do not intend to, or are unable to comply with the provisions of the Terms); or
<p>(B) Horizon is required to do so by law (for example, where the provision of the Services to you is, or becomes, unlawful); or
<p>(C) the partner with whom Horizon offered the Services to you has terminated its relationship with Horizon or ceased to offer the Services to you; or
<p>(D) Horizon is transitioning to no longer providing the Services to users in the country in which you are resident or from which you use the service; or
<p>(E) the provision of the Services to you by Horizon is, in Horizon’s opinion, no longer commercially viable.</blockquote>
<p>13.4 Nothing in this Section shall affect Horizon’s rights regarding provision of Services under Section 4 of the Terms.
<p>13.5 When these Terms come to an end, all of the legal rights, obligations and liabilities that you and Horizon have benefited from, been subject to (or which have accrued over time whilst the Terms have been in force) or which are expressed to continue indefinitely, shall be unaffected by this cessation, and the provisions of paragraph 20.7 shall continue to apply to such rights, obligations and liabilities indefinitely.</blockquote>
<p><b>14. EXCLUSION OF WARRANTIES</b>
<blockquote>
<p>14.1 NOTHING IN THESE TERMS, INCLUDING SECTIONS 14 AND 15, SHALL EXCLUDE OR LIMIT Horizon’S WARRANTY OR LIABILITY FOR LOSSES WHICH MAY NOT BE LAWFULLY EXCLUDED OR LIMITED BY APPLICABLE LAW. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR CONDITIONS OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR LOSS OR DAMAGE CAUSED BY NEGLIGENCE, BREACH OF CONTRACT OR BREACH OF IMPLIED TERMS, OR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, ONLY THE LIMITATIONS WHICH ARE LAWFUL IN YOUR JURISDICTION WILL APPLY TO YOU AND OUR LIABILITY WILL BE LIMITED TO THE MAXIMUM EXTENT PERMITTED BY LAW.
<p>14.2 YOU EXPRESSLY UNDERSTAND AND AGREE THAT YOUR USE OF THE SERVICES IS AT YOUR SOLE RISK AND THAT THE SERVICES ARE PROVIDED "AS IS" AND “AS AVAILABLE.”
<p>14.3 IN PARTICULAR, Horizon, ITS SUBSIDIARIES AND AFFILIATES, AND ITS LICENSORS DO NOT REPRESENT OR WARRANT TO YOU THAT:
<blockquote>
<p>(A) YOUR USE OF THE SERVICES WILL MEET YOUR REQUIREMENTS,
<p>(B) YOUR USE OF THE SERVICES WILL BE UNINTERRUPTED, TIMELY, SECURE OR FREE FROM ERROR,
<p>(C) ANY INFORMATION OBTAINED BY YOU AS A RESULT OF YOUR USE OF THE SERVICES WILL BE ACCURATE OR RELIABLE, AND
<p>(D) THAT DEFECTS IN THE OPERATION OR FUNCTIONALITY OF ANY SOFTWARE PROVIDED TO YOU AS PART OF THE SERVICES WILL BE CORRECTED.</blockquote>
<p>14.4 ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE USE OF THE SERVICES IS DONE AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR OTHER DEVICE OR LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OF ANY SUCH MATERIAL.
<p>14.5 NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM Horizon OR THROUGH OR FROM THE SERVICES SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THE TERMS.
<p>14.6 Horizon FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.</blockquote>
<p><b>15. LIMITATION OF LIABILITY</b>
<blockquote>
<p>15.1 SUBJECT TO OVERALL PROVISION IN PARAGRAPH 14.1 ABOVE, YOU EXPRESSLY UNDERSTAND AND AGREE THAT Horizon, ITS SUBSIDIARIES AND AFFILIATES, AND ITS LICENSORS SHALL NOT BE LIABLE TO YOU FOR:
<blockquote>
<p>(A) ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL CONSEQUENTIAL OR EXEMPLARY DAMAGES WHICH MAY BE INCURRED BY YOU, HOWEVER CAUSED AND UNDER ANY THEORY OF LIABILITY.. THIS SHALL INCLUDE, BUT NOT BE LIMITED TO, ANY LOSS OF PROFIT (WHETHER INCURRED DIRECTLY OR INDIRECTLY), ANY LOSS OF GOODWILL OR BUSINESS REPUTATION, ANY LOSS OF DATA SUFFERED, COST OF PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, OR OTHER INTANGIBLE LOSS;
<p>(B) ANY LOSS OR DAMAGE WHICH MAY BE INCURRED BY YOU, INCLUDING BUT NOT LIMITED TO LOSS OR DAMAGE AS A RESULT OF:
<blockquote>
<p>(I) ANY RELIANCE PLACED BY YOU ON THE COMPLETENESS, ACCURACY OR EXISTENCE OF ANY ADVERTISING, OR AS A RESULT OF ANY RELATIONSHIP OR TRANSACTION BETWEEN YOU AND ANY ADVERTISER OR SPONSOR WHOSE ADVERTISING APPEARS ON THE SERVICES;
<p>(II) ANY CHANGES WHICH Horizon MAY MAKE TO THE SERVICES, OR FOR ANY PERMANENT OR TEMPORARY CESSATION IN THE PROVISION OF THE SERVICES (OR ANY FEATURES WITHIN THE SERVICES);
<p>(III) THE DELETION OF, CORRUPTION OF, OR FAILURE TO STORE, ANY CONTENT AND OTHER COMMUNICATIONS DATA MAINTAINED OR TRANSMITTED BY OR THROUGH YOUR USE OF THE SERVICES;
<p>(III) YOUR FAILURE TO PROVIDE Horizon WITH ACCURATE ACCOUNT INFORMATION;
<p>(IV) YOUR FAILURE TO KEEP YOUR PASSWORD OR ACCOUNT DETAILS SECURE AND CONFIDENTIAL;</blockquote></blockquote>
<p>15.2 THE LIMITATIONS ON Horizon’S LIABILITY TO YOU IN PARAGRAPH 15.1 ABOVE SHALL APPLY WHETHER OR NOT Horizon HAS BEEN ADVISED OF OR SHOULD HAVE BEEN AWARE OF THE POSSIBILITY OF ANY SUCH LOSSES ARISING.</blockquote>
<p><b>16. Copyright and trade mark policies</b>
<blockquote>
<p>16.1 It is Horizon’s policy to respond to notices of alleged copyright infringement that comply with applicable international intellectual property law (including, in the United States, the Digital Millennium Copyright Act) and to terminating the accounts of repeat infringers. Details of Horizon’s policy can be found at <a href="http://www.Horizon.com/dmca.html">http://www.Horizon.com/dmca.html</a>.
<p>16.2 Horizon operates a trade mark complaints procedure in respect of Horizon’s advertising business, details of which can be found at <a href="http://www.Horizon.com/tm_complaint.html">http://www.Horizon.com/tm_complaint.html</a>.</blockquote>
<p><b>17. Advertisements</b>
<blockquote>
<p>17.1 Some of the Services are supported by advertising revenue and may display advertisements and promotions. These advertisements may be targeted to the content of information stored on the Services, queries made through the Services or other information.
<p>17.2 The manner, mode and extent of advertising by Horizon on the Services are subject to change without specific notice to you.
<p>17.3 In consideration for Horizon granting you access to and use of the Services, you agree that Horizon may place such advertising on the Services.</blockquote>
<p><b>18. Other content</b>
<blockquote>
<p>18.1 The Services may include hyperlinks to other web sites or content or resources. Horizon may have no control over any web sites or resources which are provided by companies or persons other than Horizon.
<p>18.2 You acknowledge and agree that Horizon is not responsible for the availability of any such external sites or resources, and does not endorse any advertising, products or other materials on or available from such web sites or resources.
<p>18.3 You acknowledge and agree that Horizon is not liable for any loss or damage which may be incurred by you as a result of the availability of those external sites or resources, or as a result of any reliance placed by you on the completeness, accuracy or existence of any advertising, products or other materials on, or available from, such web sites or resources.</blockquote>
<p><b>19. Changes to the Terms</b>
<blockquote>
<p>19.1 Horizon may make changes to the Universal Terms or Additional Terms from time to time. When these changes are made, Horizon will make a new copy of the Universal Terms available at <a href="http://www.Horizon.com/accounts/TOS?hl=en">http://www.Horizon.com/accounts/TOS?hl=en</a> and any new Additional Terms will be made available to you from within, or through, the affected Services.
<p>19.2 You understand and agree that if you use the Services after the date on which the Universal Terms or Additional Terms have changed, Horizon will treat your use as acceptance of the updated Universal Terms or Additional Terms.</blockquote>
<p><b>20. General legal terms</b>
<blockquote>
<p>20.1 Sometimes when you use the Services, you may (as a result of, or through your use of the Services) use a service or download a piece of software, or purchase goods, which are provided by another person or company. Your use of these other services, software or goods may be subject to separate terms between you and the company or person concerned. If so, the Terms do not affect your legal relationship with these other companies or individuals.
<p>20.2 The Terms constitute the whole legal agreement between you and Horizon and govern your use of the Services (but excluding any services which Horizon may provide to you under a separate written agreement), and completely replace any prior agreements between you and Horizon in relation to the Services.
<p>20.3 You agree that Horizon may provide you with notices, including those regarding changes to the Terms, by email, regular mail, or postings on the Services.
<p>20.4 You agree that if Horizon does not exercise or enforce any legal right or remedy which is contained in the Terms (or which Horizon has the benefit of under any applicable law), this will not be taken to be a formal waiver of Horizon’s rights and that those rights or remedies will still be available to Horizon.
<p>20.5 If any court of law, having the jurisdiction to decide on this matter, rules that any provision of these Terms is invalid, then that provision will be removed from the Terms without affecting the rest of the Terms. The remaining provisions of the Terms will continue to be valid and enforceable.
<p>20.6 You acknowledge and agree that each member of the group of companies of which Horizon is the parent shall be third party beneficiaries to the Terms and that such other companies shall be entitled to directly enforce, and rely upon, any provision of the Terms which confers a benefit on (or rights in favor of) them. Other than this, no other person or company shall be third party beneficiaries to the Terms.
<p>20.7 The Terms, and your relationship with Horizon under the Terms, shall be governed by the laws of the State of California without regard to its conflict of laws provisions. You and Horizon agree to submit to the exclusive jurisdiction of the courts located within the county of Santa Clara, California to resolve any legal matter arising from the Terms. Notwithstanding this, you agree that Horizon shall still be allowed to apply for injunctive remedies (or an equivalent type of urgent legal relief) in any jurisdiction.
<p>April 16, 2007</blockquote></div></div></div>
<div id="maia-signature"></div>
<div class="maia-footer" id="maia-footer">
<div id="maia-footer-local">
<div class="maia-aux">
<div class="policy-footer-sitemap">
<div class="maia-cols">
<div class="maia-col-3">

</div>

<?php
if ($universal->isLoggedIn()) {
  include 'includes/footer.php';
} else if ($universal->isLoggedIn() == false) {
  include 'includes\index_footer.php';
}
?>
