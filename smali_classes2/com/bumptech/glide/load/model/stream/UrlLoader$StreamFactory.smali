.class public Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/UrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/model/stream/UrlLoader;

    const-class v1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/stream/UrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method
