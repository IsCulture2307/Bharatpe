.class public final Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/TransitionOptions<",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/bumptech/glide/TransitionOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->b:Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
