document.addEventListener('DOMContentLoaded', function(){
  if (document.getElementById('comp-image')){
    const ImageContent = document.getElementById('image-content');

    // 選択した画像を表示
    const createImageHTML = (blob) => {
      // 画像を表示するためのdiv要素の生成
      const imageElement = document.createElement('div');
      // 表示する画像を生成
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);
      // 生成したHTMLの要素をブラウザに表示
      imageElement.appendChild(blobImage);
      ImageContent.appendChild(imageElement);
    };

    document.getElementById('comp-image').addEventListener('change', function(e){
      // 画像が表示されている場合に、既に存在している画像を削除する
      const imageChange = document.querySelector('img');
      if (imageChange){
        imageChange.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  }
});