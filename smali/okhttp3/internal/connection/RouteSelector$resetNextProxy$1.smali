.class final Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RouteSelector;->resetNextProxy(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/net/Proxy;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "selectProxies",
        "",
        "Ljava/net/Proxy;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $proxy:Ljava/net/Proxy;

.field final synthetic $url:Lokhttp3/HttpUrl;

.field final synthetic this$0:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RouteSelector;Ljava/net/Proxy;Lokhttp3/HttpUrl;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->this$0:Lokhttp3/internal/connection/RouteSelector;

    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$url:Lokhttp3/HttpUrl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$url:Lokhttp3/HttpUrl;

    .line 3
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->this$0:Lokhttp3/internal/connection/RouteSelector;

    .line 5
    invoke-static {v1}, Lokhttp3/internal/connection/RouteSelector;->access$getAddress$p(Lokhttp3/internal/connection/RouteSelector;)Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 6
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    new-array v0, v3, [Ljava/net/Proxy;

    .line 8
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
