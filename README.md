# README

<h3> technology </h3>

<li> Ruby 2.7.0 </li>

<li> Rails 6.0.4.1 </li>

<li> SQLite 3.31.1 </li>

<li> gem 'image_processing' enabled </li>

<li> uses active storage for file uploads </li>

<li> bootstrap 5.1 </li>

<h3> backend </h3>
<p>The data model was build in order to achieve an equilibrium between simplicity and normalization. The author model is currently of limited use however it can be extended in future iterations to reduce duplicates by giving the user the possbility to choose from existing authors or to create new ones. Same goes for ingredients. It would be more efficient to further normalize the structre of the model as the amount of data grows. It has been decided because of limited data to calculate ratings on the client side. However an implementation on the backend would be easy to do.</p> 

<h3> frontend </h3>
<p>Bootstrap has been used to make sure the page looks consistant on desktop as on mobile devices. For upcoming iterations there ist still a lot of room for improvements. One could use a burger menu as the navbar collapses for example. Also no custom JS has been used which would enhance UX significantly. The ultilization of a JS framework like React or mybe Svelte would be a good option.</p>
