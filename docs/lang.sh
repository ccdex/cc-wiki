#!/bin/bash
sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/en_US">EN</option>\
                                <option data-select="/docs/zh_CN">中</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/en_US/KeyTechnique">EN</option>\
                                <option data-select="/docs/zh_CN/KeyTechnique">中</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/KeyTechnique/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/en_US/RulesAndIncentiveModels">EN</option>\
                                <option data-select="/docs/zh_CN/RulesAndIncentiveModels">中</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/RulesAndIncentiveModels/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/en_US/CCDEX_YP_EN">EN</option>\
                                <option data-select="/docs/zh_CN/CCDEX_YP_CN">中</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/CCDEX_YP_EN/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/en_US/Wallet_Manual_us_EN">EN</option>\
                                <option data-select="/docs/zh_CN/Wallet_Manual_zh_CN">中</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/Wallet_Manual_us_EN/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/zh_CN">中</option>\
                                <option data-select="/docs/en_US">EN</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/zh_CN/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/zh_CN/KeyTechnique">中</option>\
                                <option data-select="/docs/en_US/KeyTechnique">EN</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/zh_CN/KeyTechnique/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/zh_CN/RulesAndIncentiveModels">中</option>\
                                <option data-select="/docs/en_US/RulesAndIncentiveModels">EN</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/zh_CN/RulesAndIncentiveModels/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/zh_CN/CCDEX_YP_CN">中</option>\
                                <option data-select="/docs/en_US/CCDEX_YP_EN">EN</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/zh_CN/CCDEX_YP_CN/index.html

sed -i '/<div role="navigation" aria-label="breadcrumbs navigation">/a\
		<style>\
                        .lang-select {\
                            position: absolute;\
                            font-family: Arial;\
                            width: 78px;\
                            height: 34px;\
                            margin-top: 0px;\
                            align-items: center;\
                            right: 50px;\
                            font-size: 12px;\
                            line-height: 16px;\
                            font-weight: 600;\
                        }\
                        @media screen and (max-width: 750px) {\
                            .lang-select { margin-top: -345px; right: 20px; }\
                            .with-menu .lang-select { margin-top: -52px; }\
                        }\
                        .lang-select select {\
                            display: none;\
                        }\
                        .select-selected {\
                            background-color: white;\
                        }\
                        .select-selected:after {\
                            position: absolute;\
                            content: "";\
                            top: 14px;\
                            right: 10px;\
                            width: 0;\
                            height: 0;\
                            border: 6px solid transparent;\
                            border-color: #00E5EE transparent transparent transparent;\
                        }\
                        .select-selected.select-arrow-active:after {\
                            border-color: transparent transparent #00E5EE transparent;\
                            top: 7px;\
                        }\
                        .select-items div,.select-selected {\
                            color: #fff;\
                            background: #00E5EE;\
                            padding: 8px 2px;\
                            border: 1px solid #00E5EE;\
                            cursor: pointer;\
                            text-align: center;\
                        }\
                        .select-selected {\
                            color: #00E5EE;\
                            background: #fff;\
                            text-align: left;\
                            padding: 8px 16px;\
                        }\
                        .select-items {\
                            position: absolute;\
                            background-color: white;\
                            top: 100%;\
                            left: 0;\
                            right: 0;\
                            z-index: 99;\
                        }\
                        .select-hide {\
                            display: none;\
                        }\
                        .select-items div:hover, .same-as-selected {\
                            background-color: #00FFFF;\
                        }\
                        </style>\
                        \
                        <div class="lang-select">\
                          <select>\
                                <option data-select="/docs/zh_CN/Wallet_Manual_zh_CN">中</option>\
                                <option data-select="/docs/en_US/Wallet_Manual_us_EN">EN</option>\
                          </select>\
                        </div>\
                        \
                        <script>\
                        var x, i, j, selElmnt, a, b, c;\
                        x = document.getElementsByClassName("lang-select");\
                        for (i = 0; i < x.length; i++) {\
                          selElmnt = x[i].getElementsByTagName("select")[0];\
                          a = document.createElement("DIV");\
                          a.setAttribute("class", "select-selected");\
                          a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;\
                          a.setAttribute("data-select", selElmnt.options[selElmnt.selectedIndex].getAttribute("data-select"));\
                          x[i].appendChild(a);\
                          b = document.createElement("DIV");\
                          b.setAttribute("class", "select-items select-hide");\
                          for (j = 1; j < selElmnt.length; j++) {\
                            c = document.createElement("DIV");\
                            c.innerHTML = selElmnt.options[j].innerHTML;\
                            c.setAttribute("data-select", selElmnt.options[j].getAttribute("data-select"));\
                            c.addEventListener("click", function(e) {\
                                var y, i, k, s, h;\
                                s = this.parentNode.parentNode.getElementsByTagName("select")[0];\
                                h = this.parentNode.previousSibling;\
                                for (i = 0; i < s.length; i++) {\
                                  if (s.options[i].innerHTML == this.innerHTML) {\
                                    s.selectedIndex = i;\
                                    h.innerHTML = this.innerHTML;\
                                    let langUrl = this.getAttribute("data-select");\
                                    if (langUrl) {\
                                        window.location.href = langUrl;\
                                    }\
                                    y = this.parentNode.getElementsByClassName("same-as-selected");\
                                    for (k = 0; k < y.length; k++) {\
                                      y[k].removeAttribute("class");\
                                    }\
                                    this.setAttribute("class", "same-as-selected");\
                                    break;\
                                  }\
                                }\
                                h.click();\
                            });\
                            b.appendChild(c);\
                          }\
                          x[i].appendChild(b);\
                          a.addEventListener("click", function(e) {\
                              e.stopPropagation();\
                              closeAllSelect(this);\
                              this.nextSibling.classList.toggle("select-hide");\
                              this.classList.toggle("select-arrow-active");\
                          });\
                        }\
                        function closeAllSelect(elmnt) {\
                          var x, y, i, arrNo = [];\
                          x = document.getElementsByClassName("select-items");\
                          y = document.getElementsByClassName("select-selected");\
                          for (i = 0; i < y.length; i++) {\
                            if (elmnt == y[i]) {\
                              arrNo.push(i)\
                            } else {\
                              y[i].classList.remove("select-arrow-active");\
                            }\
                          }\
                          for (i = 0; i < x.length; i++) {\
                            if (arrNo.indexOf(i)) {\
                              x[i].classList.add("select-hide");\
                            }\
                          }\
                        }\
                        document.addEventListener("click", closeAllSelect);\
		</script>' site/zh_CN/Wallet_Manual_zh_CN/index.html

sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/KeyTechnique/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/RulesAndIncentiveModels/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/CCDEX_YP_EN/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/Wallet_Manual_us_EN/index.html

cp site/index.html site/en_US/index.html
cp site/KeyTechnique/index.html site/en_US/KeyTechnique/index.html
cp site/RulesAndIncentiveModels/index.html site/en_US/RulesAndIncentiveModels/index.html
cp site/CCDEX_YP_EN/index.html site/en_US/CCDEX_YP_EN/index.html
cp site/Wallet_Manual_us_EN/index.html site/en_US/Wallet_Manual_us_EN/index.html

sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/zh_CN/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/zh_CN/KeyTechnique/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/zh_CN/RulesAndIncentiveModels/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/zh_CN/CCDEX_YP_CN/index.html
sed -i 's/<div class="wy-nav-content">/<div class="wy-nav-content" style="position:absolute;">/g' site/zh_CN/Wallet_Manual_zh_CN/index.html

