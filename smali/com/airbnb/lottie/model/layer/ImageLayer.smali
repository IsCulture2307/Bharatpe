.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final C:Lcom/airbnb/lottie/animation/LPaint;

.field public final D:Landroid/graphics/Rect;

.field public final E:Landroid/graphics/Rect;

.field public final F:Lcom/airbnb/lottie/LottieImageAsset;

.field public G:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public H:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->C:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->E:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->a:Lcom/airbnb/lottie/LottieComposition;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/LottieComposition;->d:Ljava/util/Map;

    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->g:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->F:Lcom/airbnb/lottie/LottieImageAsset;

    return-void
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->F:Lcom/airbnb/lottie/LottieImageAsset;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->c()F

    move-result p3

    iget v0, p2, Lcom/airbnb/lottie/LottieImageAsset;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iget p2, p2, Lcom/airbnb/lottie/LottieImageAsset;->b:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public final f(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->f(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->G:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->G:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->N:Landroid/graphics/Bitmap;

    if-ne p2, v0, :cond_3

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->H:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->H:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    :cond_3
    :goto_0
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->H:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v2, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->F:Lcom/airbnb/lottie/LottieImageAsset;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->g:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_2

    :cond_1
    iget-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->h:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    move-object v7, v6

    goto :goto_0

    :cond_3
    instance-of v8, v7, Landroid/view/View;

    if-eqz v8, :cond_2

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    :goto_0
    iget-object v5, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->a:Landroid/content/Context;

    if-nez v7, :cond_4

    if-eqz v5, :cond_6

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    iput-object v6, v2, Lcom/airbnb/lottie/LottieDrawable;->h:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_6
    :goto_1
    iget-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->h:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v5, :cond_7

    new-instance v5, Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    iget-object v8, v2, Lcom/airbnb/lottie/LottieDrawable;->i:Ljava/lang/String;

    iget-object v9, v2, Lcom/airbnb/lottie/LottieDrawable;->j:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v10, v2, Lcom/airbnb/lottie/LottieDrawable;->a:Lcom/airbnb/lottie/LottieComposition;

    iget-object v10, v10, Lcom/airbnb/lottie/LottieComposition;->d:Ljava/util/Map;

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->h:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_7
    iget-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->h:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :goto_2
    if-eqz v5, :cond_f

    iget-object v7, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->d:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieImageAsset;

    if-nez v8, :cond_8

    :goto_3
    move-object v9, v6

    goto/16 :goto_6

    :cond_8
    iget-object v9, v8, Lcom/airbnb/lottie/LottieImageAsset;->d:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v9, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->c:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v9, :cond_a

    invoke-interface {v9}, Lcom/airbnb/lottie/ImageAssetDelegate;->a()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v5, v0, v9}, Lcom/airbnb/lottie/manager/ImageAssetManager;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_a
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v11, 0xa0

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v11, "data:"

    iget-object v12, v8, Lcom/airbnb/lottie/LottieImageAsset;->c:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "base64,"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_b

    const/16 v7, 0x2c

    :try_start_0
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v10

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v8, v7

    invoke-static {v7, v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Lcom/airbnb/lottie/manager/ImageAssetManager;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v5, "data URL did not have correct base64 format."

    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v7, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v9, Lcom/airbnb/lottie/utils/Utils;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget v11, v8, Lcom/airbnb/lottie/LottieImageAsset;->a:I

    iget v8, v8, Lcom/airbnb/lottie/LottieImageAsset;->b:I

    if-ne v9, v11, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v8, :cond_c

    move-object v9, v7

    goto :goto_4

    :cond_c
    invoke-static {v7, v11, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v8

    :goto_4
    invoke-virtual {v5, v0, v9}, Lcom/airbnb/lottie/manager/ImageAssetManager;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v5, v0

    const-string v0, "Unable to decode image."

    invoke-static {v0, v5}, Lcom/airbnb/lottie/utils/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_d
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    const-string v5, "Unable to open asset."

    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_e
    :goto_6
    move-object v0, v9

    goto :goto_7

    :cond_f
    move-object v0, v6

    :goto_7
    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v3, :cond_11

    iget-object v0, v3, Lcom/airbnb/lottie/LottieImageAsset;->d:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_11
    move-object v0, v6

    :goto_8
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_15

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->c()F

    move-result v5

    iget-object v6, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->C:Lcom/airbnb/lottie/animation/LPaint;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    iget-object v7, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->G:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    iget-object v7, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->E:Landroid/graphics/Rect;

    if-eqz v2, :cond_14

    iget v2, v3, Lcom/airbnb/lottie/LottieImageAsset;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v3, Lcom/airbnb/lottie/LottieImageAsset;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_9
    move-object v2, p1

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9

    :goto_a
    invoke-virtual {p1, v0, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    :goto_b
    return-void
.end method
