.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-static {p1, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->d(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
