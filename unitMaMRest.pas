unit unitMaMRest;

interface

uses IdURI, AnsiStrings;

type
  TMethodStruct = record
    MethodName: string;
    APIVersion: string;
    APIType: string;
  end;

type
  TCAPIMethodsMadsonic = array [1 .. 86] of TMethodStruct;

type
  TCAPIMethodsSubsonic = array [1 .. 1] of TMethodStruct;

const
  CAPIMethodsSubsonic: TCAPIMethodsSubsonic = ((MethodName: 'ping';
    APIVersion: '1.13.0'; APIType: 'subsonic'));

const
  CAPIMethodsMadsonic: TCAPIMethodsMadsonic = ((MethodName: 'getApi';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'ping';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getLicense';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getMusicFolders';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getIndexes';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getMusicDirectory';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getGenres';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtistGenres';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtists';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAlbum';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getSong';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getVideos';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getImage';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtistInfo';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtistInfoID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAlbumInfo';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAlbumInfoID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getVideoInfo';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getSimilarSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'),
    (MethodName: 'getSimilarSongsID3'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getSimilarArtists'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getSimilarArtistsID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getArtistsByGenre';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAlbumList';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAlbumListID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getRandomSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getSongsByGenre';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getNewaddedSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'),
    (MethodName: 'getLastplayedSongs'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getMostplayedSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getTopplayedSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getFollowmeSongs';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getNowPlaying';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getStarred';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getStarredID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'search';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'searchID3';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getPlaylists';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getPlaylist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'createPlaylist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'updatePlaylist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'deletePlaylist';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'stream';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'hls';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'dash';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'download';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getCoverArt';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getCaptions';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getLyrics';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getAvatar';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'star';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'unstar';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'setRating';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'scrobble';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getShares';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'createShare';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'updateShare';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'deleteShare';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getPodcasts';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getNewestPodcasts';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'refreshPodcasts';
    APIVersion: '2.5.0'; APIType: 'madsonic'),
    (MethodName: 'createPodcastChannel'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'deletePodcastChannel';
    APIVersion: '2.5.0'; APIType: 'madsonic'),
    (MethodName: 'deletePodcastEpisode'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'downloadPodcastEpisode';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'jukeboxControl';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'nodeControl';
    APIVersion: '2.5.0'; APIType: 'madsonic'), (MethodName: 'getNodeList';
    APIVersion: '2.5.0'; APIType: 'madsonic'),
    (MethodName: 'getInternetRadioStations'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getChatMessages'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'addChatMessage'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getUser'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getUsers'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'createUser'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'updateUser'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'deleteUser'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'changePassword'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getBookmarks'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'createBookmark'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'deleteBookmark'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'getPlayQueue'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'savePlayQueue'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'scanStatus'; APIVersion: '2.5.0';
    APIType: 'madsonic'), (MethodName: 'startRescan'; APIVersion: '2.5.0';
    APIType: 'madsonic'));

type
  TMaMConfig = class(TObject)
  private

    FEmpty: Boolean;
    FUser: string;
    FPassWord: string;
    FAPIBaseURL: string;
    FAPIUri: TIdURI;
    FAPIDocumentMadsonic: string;
    FAPIDocumentSubsonic: string;
    FAPIType: string;
    FAPIDocument: string;
    FAPIVersionMethod: string;
  public
    constructor Create(p_FAPIBaseURL: string);
    property APIUser: string read FUser write FUser;
    property APIPass: string read FPassWord write FPassWord;
    property APIBaseURL: string read FAPIBaseURL write FAPIBaseURL;
    property APIDocumentMadsonic: string read FAPIDocumentMadsonic
      write FAPIDocumentMadsonic;
    property APIDocumentSubsonic: string read FAPIDocumentSubsonic
      write FAPIDocumentSubsonic;
    property APIType: string read FAPIType write FAPIType;
    function APIDocument: string;
    property APIVersionMethod: string read FAPIVersionMethod
      write FAPIVersionMethod;
    procedure Free;
  end;

implementation

constructor TMaMConfig.Create(p_FAPIBaseURL: string);
begin
  inherited Create;
  { ... }
  // if ExecRegExpr ('(http|https)://([\w-]+\.)+(/[\w- ./?%&=]*)?', url)
  FAPIUri := TIdURI.Create(p_FAPIBaseURL);
  FAPIBaseURL := FAPIUri.URLEncode(p_FAPIBaseURL);
  FAPIType := 'madsonic';
  APIDocumentMadsonic := '/rest2';
  APIDocumentSubsonic := '/rest';
  FAPIDocument := APIDocumentMadsonic;
  FAPIVersionMethod := 'getAPI';

end;

function TMaMConfig.APIDocument: string;
begin

  if lowercase(self.APIType) = 'madsonic' then
    result := FAPIDocumentMadsonic
  else
    result := APIDocumentSubsonic;
end;

procedure TMaMConfig.Free;
begin
  { eigene Freigaben }
  FAPIUri.Free;
  inherited Free;
end;

end.
