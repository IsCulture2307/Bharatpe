.class final Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.postpe.app.appUseCases.thirdPartyWebView.ThirdPartyWebViewActivity$loadWebViewWithData$1"
    f = "ThirdPartyWebViewActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->a:Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;

    iput-object p2, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;

    iget-object v0, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->a:Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;

    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;-><init>(Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->a:Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;

    iget-object p1, p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity;->v:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/ThirdPartyWebViewActivity$loadWebViewWithData$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {p1}, Lso/plotline/insights/Plotline;->m(Landroid/webkit/WebView;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
