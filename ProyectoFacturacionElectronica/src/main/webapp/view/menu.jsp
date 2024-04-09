<%-- 
    Document   : PagHTokens
    Created on : 5 mar 2024, 20:18:08
    Author     : dany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historial de tokens</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <!-- tag de bootratraps -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>

        <!-- bienvenidad y cerrar -->
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src= "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAS1JREFUSEvtVkFuwjAQnJXyBKfKjf6k9CWlLym8pPyk/KRwi+p9AtVWBoygSYjHSUUO5YY1nsnujNYruNNP7qSL6Qg75+YpXSiKYlvX9TYF24Y5V1xV1eP3fv9JEG286jOBv4KehR+cWxrwxhB51WyrpiUswCpUbsATgIPnbWejVxwJL9t/6yzacyuYv8PY2mpWODmYIq/e+/Wpg8fvHRKu1LvBri/V5fSE2XA1KjZbi8jOzGYQWcQM9Fac6rEBhwEiZi+XAuFcVTchbAJ8jC7cNWyyhZnpxWB7W82QMdhe4dRwdYr+dbhG9zg11aMLM74x2F6PGTIG+y+c/ToxbY7LRON1KstyAbN3lozBx1F69SyGP6mrLSMWsZ0bSA7ZkDvZ6+kQ0Uarh5Ix938A+z0bLq8mQHUAAAAASUVORK5CYII=" alt="Bootstrap" width="50" height="44"/>
                    Nombre de empresa
                </a>
                <form class="d-flex" role="search">
                    <span class="navbar-brand">Hola,Usuario!!  
                    </span>

                    <a class="navbar-brand" href="#">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAc1JREFUSEvtlk1ywjAMhSV+ThCnwxJO0uYmcJLSk0BPApyELJnGOQEpKnITahJbdjKdoYtml4ztT3rSk4PwoAcfxIVBYKXUCwA810EftNb7vgkMBiPAjmEEkP2DY2T/21LPZrP5paqWF4A915Obq13jZs2H1utfydgFEb8R5Yj4HgpAlNoG2B0cCgaIckJcSd3uBfugHIALzN+flFoTwKuROgD3glOl2Kc8KDpe9YHbQV337wutM1fNnWD7YAR4a9dLAjMkTZINIC6lAeME2xvHk8nidDrldtQhMHf4Z1UdeY8r8Pp7V4gbmGhblOWqvSIENln/lMopty/jIyDOwQOO8akVfF6U5aK9xw1WiiSZeoEBoNC6w/GBm472dmUIniaJqJoTfPMjkVOmELSusVHNV66gnQBxVRTFNgbWrEnTdAlEG/Pu2e8EGzucz7u6wfLxdJq1LSUFktY9wtPL1VheO3UmUI/uliaeHax4SdiDJDR7jbdZXrahUNsGLoKbO9Ye/NdRmHMQMBodjGREc/r+8TNzvX6Cboj6A7m7daTiRt7FYo3b51vZ32fH2SPmCHAIXf7RNZaS40D6dHrUyOzj2aFro2o89HBp38PAXwIWVi5MBuuaAAAAAElFTkSuQmCC" alt="Bootstrap" width="50" height="44"/>
                    </a>
                </form>
            </div>
        </nav>

        <nav>
            <a href="VHTokens.jsp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAeNJREFUSEvlls1xwjAQhXcDVGA5wy1QSaCSQCVAJSGVxKkE5cbEcgfGm5GwPZJteRcmMxzC1dJ+em//QHjQDx/EhbvA8/l8UZXlhhA1EWljTHargJvASqkVEr0D4iIAEWl4ejrkeX6UPkAMTtN0AxY68kOAw48xewlcBHZKAT5dQE+dtfxyuaygqnbOBSJNiFuJ9SJwqpSFrix3Mp0uz+ez9lW5B5TlqXlYXhRLTrUUTDbQmJXPSu0JYGdV/wk4sBlxGysg/xwBrDm7WcWBjSNgv/iG0tG1ngXbC2mSnOoWynJj1kP58+sgN4aNyx6wkDZ/kTynSWJ7e8PVgf9gEbi22/awq2zXUgAZIn4T0Vs7UISFVT+QK/zr9x68e41IT2azdbfVYtFFiv3Lte2vTr1VjqgR4Es6sZpYN4Nl/vCnROB2GxG99BZEwyDSNucVQMb1MJtjNq8xYYJ8RxUHE8tTZXMa4V0rPnTgI5b7QfAANDo4fFabEjuz67aLbatBcKqUWwrurmDudh3ortGhpdEDc1OKr9frCX92D221HlgylyXwoDAHJlof3NhMdMyLYiuBxM747nU3VgCW7l7pY8Z2dBR8T1GNFVk3XgC2eSnL0v11lUwfTvlYPNHI5AD3fP9/4F/DgjkuYU2GngAAAABJRU5ErkJggg==" alt="Bootstrap" width="50" height="44"/>
                Historial Tokens</a>
            <a href="VHEnvios.jsp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAcVJREFUSEvtll12gjAQhWcEV0Do8ZGupLqSykrUldSdlJ2UvnmasAPrtBMIDSHIT/H40ObFwxFyM3e+uYBwp4V30oV/4Zs4L4RYI2ISBEF2Op1yFrmp1XEcb+Fy2QFioitCTKWUx5sIV2JPgLh17UOAw4dS+1mF4yh6AYB1XZ2naQSwUUplvxbW1RE9a0F7EeWwWByAiA9TL6lU3drRPdagsJjHSq1AdAyWy8Pn+Vw6YBZRLovi0VwOFm6B4lpJlBNiGoZh3hItKa7722v1NVBsXbOpdgPg1TeTg4SHgFJtngVhmPJsXhPle+3+NiperVaJz6KuRLEJ7RMFp78N4d4e/kBylEWRmsuK7Aa9nsNmUqmN057mbdXpd990Jo2ZrOAxc8hPPQixJ4BdlysWwQ2weuEyo4OI7yZx6kqFYIia89txArsto8fJ3jMeIeoDq7diXwGa+K7w8D3gAWua8MhqOclsGCdbHUfR27UXgVu0GxyzCDM0C4A1ldldvnOd5QNrqtXED7YChN9EHnE3saZXLAR1VdECrwOsSRVztJrvJp+1OlQq67v6O0m4L6X4fw4e/rVTzgPdkK3mv2fwh8Dc0n9P+AseeeQf6PgrXgAAAABJRU5ErkJggg==" alt="Bootstrap" width="50" height="44"/>
                Historial Envios</a>
            <a href="FormularioEmisor.jsp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAMFJREFUSEvt1EEOwiAQBdCZmJ6gg2HpUfQm9ST1Jj2K3sQuWXCE2jFt4q6mzAwRF7CF8MjnA0KhgYVcqPDPkq9R/2/URHRG5uHQNJcQwqg9qeiOvfen1zQ9V4x5tOAiePGORDcG6K24GM6Fq+AcuBq24ibYgpth17YDIHafsjHiNcb42HtmJliLLodSwxZUDVtRFZwDFcPrPw1wlxZpq2jiO3bOdTDPfWp7v7VbDO89k9T5CqcmZV5XozZHmLpBsajfhM59H78JhfMAAAAASUVORK5CYII=" alt="Bootstrap" width="50" height="44"/>
                Registro Emisores</a>
            <a href="FormularioReceptor.jsp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAMFJREFUSEvt1FEOgjAMBuA1cog94tG4Cd7Em+BN5HGRcoJhZkBN1GDSv1SJcTxv+9p/K+RW+mgl12X4a8nnqH8jau99eY6xSUQVMx+QqtV3PKHDcJywlFoUV8FP6BXed31ffbRjC3QsEOrYCoVgS1QMW6MYHGPjiMrbpt2JuUYe0+ta8R3fZ9YKF8NjxZY4BFviMGyFq+A5fFMU2xBCK31wavgRR//T4nGSdoGsW9QxAqnneAkytzd3bJ3o2/P+L+oLQ12AH/acc9cAAAAASUVORK5CYII=" alt="Bootstrap" width="50" height="44"/>
                Registro Receptores</a>
            <!--<a href="#"><img src=""/>
                Factura</a>-->
            <a href="#"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAUlJREFUSEvlllFuwjAMhm1NnKDJ1Ed2EzjJ4CTjJuwm605CHis1PQEwj1TrRIudNDQR0pbXpP76//4bF+FBCx/Ehb8DLstyeT4e3wBg5dx8WizWdV2bsbNJFXfQ0+kwgBAZDp4UrJUiNjMMPCn4WakdATibuVU11q77jdlgZ68r1vdRhBOZpm1fkoB/ezqykoUTvTdtu50NvgmSD56qx2x6nRQOTvRKiFtrbXXd+Ogei9C+6gjuzs/+joNQAc5FfLLiydAfyzl7o61ODXUvEFScAxoE54J6wTmhIjg3VARrpT76eer9QyEyofRKz7PhEsfbdZUZUFax1noDRPtcSsUhEZip3X18r73eC0QXxR4QN9KfRAoob3VRHACxG+6DlUipaHUXLCJzUW0Q4PMLoBqPNG//J24OUi2NsIm1oo4F7+qoahGH/x/4G4cKEi4yCZqlAAAAAElFTkSuQmCC" alt="Bootstrap" width="50" height="44"/>
                Firmador</a>
            <a href="#"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAIhJREFUSEvtlVEKgDAMQ7ObeTS9mUfxJkphgcnwo/kw+2hhMIpZ8C1lDaZqJl+U8W/kCzVR731zAogVxZ5yHZP2C/XdTz8GQ/YU48lnOWPlr1KaSjVxbX1zAYgVxV4K6TAdL91y4bKNkw21co8pTY0TcdnCZTO2PYuphCofV6oVapKmUEvYFNEDEwceH+QA4zAAAAAASUVORK5CYII=" alt="Bootstrap" width="50" height="44"/>
                Envios DTE</a>
            <div class="animation start-home"></div>
        </nav>
        <br>
        <!-- tag de bootratraps -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
