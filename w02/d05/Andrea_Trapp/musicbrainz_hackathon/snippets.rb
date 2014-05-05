<div class="content">
	<h3>Who are you going to see tonight?</h3>

		<div class='right'>
				<table>

					<% @artist.each do |k, v| %>					
					<tr>
						<td><%= k %>: </td>
						<td><%= v %></td>						
					</tr>					
					<% end %>

					<tr><td>Releases:</td></tr>
					<% @release_groups.each do |release_group| %>					
					<tr>						
						<td><%= release_group['title'] %></td>	
						<td><%= release_group['id'] %></td>	
						<!-- <td><img src=<%= @coverart_url %> alt="Release Cover Image" ></td>	 -->
						<td><img src=<%= "http://coverartarchive.org/release-group/#{release_group['id']}/front.jpg" %> alt="Release Cover Image" ></td>	
						<td><a href=<%= "http://coverartarchive.org/release-group/#{release_group['id']}/front.jpg" %>>cover pic</a></td>	
						<!-- <td><img src="http://coverartarchive.org/release-group/6fa29542-6f8b-49ff-afc9-7d5b4ac4a0db/front.jpg" alt="Release Cover Image" ></td>		 -->
						<td>-------------------------------------------</td>		
					</tr>
					<% end %>
					

					<tr>
						<td>more info on Musicbrainz <a href="http://musicbrainz.org/artist/<%= @artist[:id] %>">here</a></td>
					</tr>
					<tr>
						<td>more info on Wikipedia <a href="http://en.wikipedia.org/wiki/<%= @artist_wiki %>">here</a></td>
					</tr>


					
				</table>	

</div>

# -----------------------------------------------------------------------------
				<% @artist.each do |k, v| %>
					<tr>
						<td><%= k %>: </td>
						<td><%= v %></td>						
					</tr>
				<% end %>

# -----------------------------------------------------------------------------

				<div class='release'>
				<table>

					<tr>
						<td><%= artist["name"] %></td>
					</tr>
					<tr>
						<td><%= artist["country"] %></td>
						<td><%= artist["gender"] %></td>
						<td><%= artist["score"] %></td>
						<td><%= artist["id"] %></td>
					</tr>

					<tr>
						<th>Category</th>
						<th>Content</th>						
					</tr>

					<% @artists.each do |artist| %>
					<tr>
						<td><%= artist.keys %></td>
						<td>--------------</td>						
					</tr>
				<% end %>
				</table>	
		</div>

# -----------------------------------------------------------------------------

<div class="movie">
  <img src="<%= @movie.poster_url %>" alt="">
  <h1><%= @movie.title %></h1>
  <h2><%= @movie.plot %></h2>

# -----------------------------------------------------------------------------


					<tr>
						<td><%= @artist["name"] %></td>
					</tr>
					<tr>
						<td>Score: <%= @artist["score"] %></td>						
					</tr>
					<th>-----------------------------</th>
					<th>-----------------------------</th>
					<tr>
						<td>Country: </td><td><%= @artist["country"] %></td>
					</tr>
					<tr>
						<td>Type: </td><td><%= @artist["type"] %></td>
					</tr>
					<tr>
						<td>Gender: </td><td><%= @artist["gender"] %></td>
					</tr>
					<tr>
						<td>Born/Founded: </td><td><%= @artist["life_span"]["begin"] %></td>
					</tr>
					<tr>
						<td>Area: </td><td><%= @artist["area"]["name"] %></td>
					</tr>
					<tr>
						<td>Disambiguation: </td><td><%= @artist["disambiguation"] %></td>
					</tr>
					<tr>
						<td>more info <a href="http://musicbrainz.org/artist/<%= @artist["id"] %>">here</a></td>
					</tr>

# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------