.class public Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "SourceFile"


# static fields
.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    sget-object v1, Lcom/bumptech/glide/load/Key;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;->b:[B

    return-void
.end method


# virtual methods
.method public final b(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final c(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->a:Landroid/graphics/Paint;

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p4, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, p4, v2

    int-to-float v3, v3

    div-float v5, p4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v4, v3

    sub-float v3, p4, v2

    div-float/2addr v3, v0

    sub-float/2addr p4, v4

    div-float/2addr p4, v0

    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v2, v3

    add-float/2addr v4, p4

    invoke-direct {v0, v3, p4, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->c(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object p4

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p3, p3, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->c:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->c(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object p3

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x41aadb8c

    return v0
.end method
