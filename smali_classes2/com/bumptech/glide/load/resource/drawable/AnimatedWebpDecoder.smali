.class public final Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$ByteBufferAnimatedWebpDecoder;,
        Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;,
        Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$AnimatedImageDrawableResource;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$ByteBufferAnimatedWebpDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$ByteBufferAnimatedWebpDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;)V

    return-object v0
.end method

.method public static b(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;-><init>(IILcom/bumptech/glide/load/Options;)V

    invoke-static {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/a;->f(Landroid/graphics/ImageDecoder$Source;Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$AnimatedImageDrawableResource;

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$AnimatedImageDrawableResource;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received unexpected drawable type for animated webp, failing: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedWebpDecoder;)V

    return-object v0
.end method
