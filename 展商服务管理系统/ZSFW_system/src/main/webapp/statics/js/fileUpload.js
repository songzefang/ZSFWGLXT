var upload = (function (window) {
    var upload = function () {
        return new upload.fn.init();
    }
    upload.fn = upload.prototype = {
        constructor: upload,
        init: function () {
            this.create = function (options) {
                //console.log(options);
                this.options = options;
                this.Create();
            }

        },
        /**
        * 创建文件上传
        * 
        * @param {any} options {
        * id:string=>元素id *
        * url:string=>服务器地址 *
        * multiple:boolean=>true:多文件上传
        * accept:string=>文件类型 e.g:'.jpg,.gif'
        * start=>function() 开始上传
        * success=>function(res) 上传成功
        * fail=>function 上传失败
        * progress=>function(num) 上传进度
        * }
        */
        Create: function () {

            var options = this.options;
            if (!options ||
                !options.id ||
                !options.url
            ) {
                new Error('请传入必要的参数');
            }
            var xhr = null;
            if (window.XMLHttpRequest) {
                xhr = new XMLHttpRequest();
                if (xhr.overrideMimeType) {
                    xhr.overrideMimeType("text/xml");
                }
            } else {
                if (window.ActiveXObject) {
                    try {
                        xhr = new ActiveXObject("Msxml2.XMLHTTP");
                    } catch (e) {
                        xhr = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
            }
            if (!xhr) {
                new Error('\u8bf7\u4f7f\u7528IE\u6d4f\u89c8\u5668!')
            }
            var btnUp = document.getElementById(options.id);
            //点击按钮
            btnUp.onclick = function () {
                var formData = new FormData();


                var inpFile = document.createElement('input');
                // ininpFileput.setAttribute('id', 'myUploadInput');
                inpFile.setAttribute('type', 'file');
                inpFile.setAttribute('name', 'file' + options.id);
                if (options.multiple) {
                    inpFile.setAttribute('multiple', options.multiple);
                }
                if (options.accept) {
                    // inpFile.setAttribute('accept', options.accept);
                    inpFile.accept = options.accept;
                }
                document.body.appendChild(inpFile);
                inpFile.style.display = 'none';
                inpFile.onchange = function () {
                    if (!inpFile.value) {
                        return;
                    }
                    //console.log(inpFile.value)

                    for (var i = 0, file; file = inpFile.files[i++]; ) {
                        if (options.maxSize && file.size > options.maxSize * 1024) {
                            alert('请上传小于' + options.maxSize + 'KB的文件');
                            return;
                        }
                    }

                    //开始上传
                    if (typeof options.start === 'function') {
                        options.start();
                        //console.log("开始上传");
                        $("#" + options.id ).text("上传中..."); 
                    }
                    for (var i = 0, file; file = inpFile.files[i++]; ) {
                        //console.log(formData.keys())
                        formData.append('file' + i, file);
                    }
                    xhr.open('post', options.url);
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState == 4) {
                            if (xhr.status == 200) {
                                //上传成功
                                if (typeof options.success === 'function') {
                                    //console.log(xhr.responseText);
                                    options.success(xhr.responseText);
                                    //inpFile.remove();
                                    $("#" + options.id).text("上传"); 
                                }
                            } else {
                                //上传失败
                                if (typeof options.fail === 'function') {
                                    options.fail();
                                    inpFile.remove();
                                    console.log("上传失败");
                                    $("#" + options.id).text("上传"); 
                                }
                            }
                        }
                    }
                    //上传进度
                    xhr.upload.onprogress = function (event) {
                        var pre = Math.floor(100 * event.loaded / event.total);
                        if (typeof options.progress === 'function') {
                            options.progress(pre);
                        }
                    }
                    xhr.send(formData);
                }

                inpFile.click();
            }
        }
    }
    upload.fn.init.prototype = upload.fn;
    return upload;
})(window)

/**
 * 创建文件上传
 * 
 * @param {any} options {
 * id:string=>元素id *
 * url:string=>服务器地址 *
 * multiple:boolean=>true:多文件上传
 * accept:string=>文件类型 e.g:'.jpg,.gif'
 * start=>function() 开始上传
 * success=>function(res) 上传成功
 * fail=>function 上传失败
 * progress=>function(num) 上传进度
 * }
 */
// upload.create = function(options) {
//     if (!options ||
//         !options.id ||
//         !options.url
//     ) {
//         new Error('请传入必要的参数');
//     }
//     var formData = new FormData();
//     var xhr = null;
//     if (window.XMLHttpRequest) {
//         xhr = new XMLHttpRequest();
//         if (xhr.overrideMimeType) {
//             xhr.overrideMimeType("text/xml");
//         }
//     } else {
//         if (window.ActiveXObject) {
//             try {
//                 xhr = new ActiveXObject("Msxml2.XMLHTTP");
//             } catch (e) {
//                 xhr = new ActiveXObject("Microsoft.XMLHTTP");
//             }
//         }
//     }
//     if (!xhr) {
//         new Error('\u8bf7\u4f7f\u7528IE\u6d4f\u89c8\u5668!')
//     }

//     var inpFile = document.createElement('input');
//     // ininpFileput.setAttribute('id', 'myUploadInput');
//     inpFile.setAttribute('type', 'file');
//     // inpFile.setAttribute('name', 'file');
//     if (options.multiple) {
//         inpFile.setAttribute('multiple', true);
//     }
//     if (options.accept) {
//         // inpFile.setAttribute('accept', options.accept);
//         inpFile.accept = options.accept;
//     }
//     document.body.appendChild(inpFile);
//     inpFile.style.display = 'none';
//     inpFile.onchange = function() {
//         if (!inpFile.value) {
//             return;
//         }
//         console.log(inpFile.value)

//         // for (var i = 0, file; file = inpFile.files[i++];) {
//         //     if (options.maxSize && file.size > options.maxSize * 1024 * 1024) {
//         //         alert('请上传小于' + options.maxSize + 'M的文件');
//         //         return;
//         //     }
//         // }

//         //开始上传
//         if (typeof options.start === 'function') {
//             options.start();
//         }
//         for (var i = 0, file; file = inpFile.files[i++];) {
//             console.log(formData)
//             formData.append('file' + i, file);
//         }
//         xhr.open('post', options.url);
//         xhr.onreadystatechange = function() {
//                 if (xhr.status == 200) {
//                     if (xhr.readyState == 4) {

//                         //上传成功
//                         if (typeof options.success === 'function') {
//                             options.success(eval('(' + xhr.responseText + ')'));
//                         }
//                     }
//                 } else {

//                     //上传失败
//                     if (typeof options.fail === 'function') {
//                         options.fail();
//                     }
//                 }
//             }
//             //上传进度
//         xhr.upload.onprogress = function(event) {
//             var pre = Math.floor(100 * event.loaded / event.total);
//             if (typeof options.progress === 'function') {
//                 options.progress(pre);
//             }
//         }
//         xhr.send(formData);
//     }
//     var btnUp = document.getElementById(options.id);
//     //点击按钮
//     btnUp.onclick = function() {
//         inpFile.click();
//     }

// }