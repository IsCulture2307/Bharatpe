.class public final Lcom/tapadoo/alerter/Alert;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/tapadoo/alerter/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapadoo/alerter/Alert$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0088\u0001J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008J\u0010\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0008J\u0010\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016J\u0010\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0008J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0008J\u0010\u0010!\u001a\u00020\u00062\u0008\u0008\u0001\u0010 \u001a\u00020\u0008J\u0010\u0010\"\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008J\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#J\u000e\u0010!\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%J\u000e\u0010!\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010(\u001a\u00020\u00062\u0008\u0008\u0001\u0010\'\u001a\u00020\u0008J\u0010\u0010)\u001a\u00020\u00062\u0008\u0008\u0001\u0010\'\u001a\u00020\u0008J\u0010\u0010*\u001a\u00020\u00062\u0008\u0008\u0001\u0010 \u001a\u00020\u0008J\u0010\u0010+\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008J\u000e\u0010+\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#J\u000e\u0010*\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%J\u000e\u0010*\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010,\u001a\u00020\u00062\u0008\u0008\u0001\u0010\'\u001a\u00020\u0008J\u0010\u0010-\u001a\u00020\u00062\u0008\u0008\u0001\u0010\'\u001a\u00020\u0008J\u000e\u0010/\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u0008J\u000e\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u000200J\u000e\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000200J\u000e\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u000200J\u0010\u00107\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008J\u0010\u00108\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008J\u000e\u0010:\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u000209J\u000e\u0010<\u001a\u00020\u00062\u0006\u0010;\u001a\u000200J\u0010\u0010?\u001a\u00020\u00062\u0008\u0010>\u001a\u0004\u0018\u00010=J\u0010\u0010B\u001a\u00020\u00062\u0006\u0010A\u001a\u00020@H\u0007J\u0006\u0010D\u001a\u00020CJ\u0006\u0010E\u001a\u00020CR$\u0010M\u001a\u0004\u0018\u00010F8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\"\u0010U\u001a\u00020N8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010Y\u001a\u00020N8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010P\u001a\u0004\u0008W\u0010R\"\u0004\u0008X\u0010TR\"\u0010a\u001a\u00020Z8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R$\u0010h\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR*\u0010p\u001a\u00020\u00082\u0006\u0010i\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\u001d\u0010v\u001a\u0004\u0018\u00010q8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010uR\u001d\u0010{\u001a\u0004\u0018\u00010w8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008x\u0010s\u001a\u0004\u0008y\u0010zR\u001b\u0010~\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008|\u0010s\u001a\u0004\u0008}\u0010mR&\u0010\u007f\u001a\u00020\u00082\u0006\u0010\u007f\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0080\u0001\u0010m\"\u0005\u0008\u0081\u0001\u0010oR\u0016\u0010\u0083\u0001\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010mR\u0016\u0010\u0085\u0001\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010mR\u0016\u0010\u0087\u0001\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010m\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/tapadoo/alerter/Alert;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Lcom/tapadoo/alerter/SwipeDismissTouchListener$DismissCallbacks;",
        "listener",
        "",
        "setOnClickListener",
        "",
        "visibility",
        "setVisibility",
        "color",
        "setAlertBackgroundColor",
        "resource",
        "setAlertBackgroundResource",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "setAlertBackgroundDrawable",
        "titleId",
        "setTitle",
        "textId",
        "setText",
        "",
        "title",
        "textAppearance",
        "setTitleAppearance",
        "Landroid/graphics/Typeface;",
        "typeface",
        "setTitleTypeface",
        "setTextTypeface",
        "text",
        "setTextAppearance",
        "iconId",
        "setIcon",
        "setIconColorFilter",
        "Landroid/graphics/ColorFilter;",
        "colorFilter",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "size",
        "setIconSize",
        "setIconPixelSize",
        "setRightIcon",
        "setRightIconColorFilter",
        "setRightIconSize",
        "setRightIconPixelSize",
        "position",
        "setRightIconPosition",
        "",
        "dismissible",
        "setDismissible",
        "enableInfiniteDuration",
        "setEnableInfiniteDuration",
        "enableProgress",
        "setEnableProgress",
        "setProgressColorRes",
        "setProgressColorInt",
        "Lcom/tapadoo/alerter/OnShowAlertListener;",
        "setOnShowListener",
        "vibrationEnabled",
        "setVibrationEnabled",
        "Landroid/net/Uri;",
        "soundUri",
        "setSound",
        "",
        "elevation",
        "setBackgroundElevation",
        "Landroid/widget/TextView;",
        "getTitle",
        "getText",
        "Lcom/tapadoo/alerter/OnHideAlertListener;",
        "b",
        "Lcom/tapadoo/alerter/OnHideAlertListener;",
        "getOnHideListener$alerter_release",
        "()Lcom/tapadoo/alerter/OnHideAlertListener;",
        "setOnHideListener$alerter_release",
        "(Lcom/tapadoo/alerter/OnHideAlertListener;)V",
        "onHideListener",
        "Landroid/view/animation/Animation;",
        "c",
        "Landroid/view/animation/Animation;",
        "getEnterAnimation$alerter_release",
        "()Landroid/view/animation/Animation;",
        "setEnterAnimation$alerter_release",
        "(Landroid/view/animation/Animation;)V",
        "enterAnimation",
        "d",
        "getExitAnimation$alerter_release",
        "setExitAnimation$alerter_release",
        "exitAnimation",
        "",
        "e",
        "J",
        "getDuration$alerter_release",
        "()J",
        "setDuration$alerter_release",
        "(J)V",
        "duration",
        "n",
        "Landroid/graphics/Typeface;",
        "getButtonTypeFace",
        "()Landroid/graphics/Typeface;",
        "setButtonTypeFace",
        "(Landroid/graphics/Typeface;)V",
        "buttonTypeFace",
        "value",
        "r",
        "I",
        "getLayoutGravity",
        "()I",
        "setLayoutGravity",
        "(I)V",
        "layoutGravity",
        "Landroid/view/View;",
        "s",
        "Lkotlin/Lazy;",
        "getLayoutContainer",
        "()Landroid/view/View;",
        "layoutContainer",
        "Landroid/view/Display;",
        "t",
        "getCurrentDisplay",
        "()Landroid/view/Display;",
        "currentDisplay",
        "u",
        "getNavigationBarHeight",
        "navigationBarHeight",
        "contentGravity",
        "getContentGravity",
        "setContentGravity",
        "getPhysicalScreenHeight",
        "physicalScreenHeight",
        "getUsableScreenHeight",
        "usableScreenHeight",
        "getCutoutsHeight",
        "cutoutsHeight",
        "Companion",
        "alerter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public a:Lcom/tapadoo/alerter/OnShowAlertListener;

.field public b:Lcom/tapadoo/alerter/OnHideAlertListener;

.field public c:Landroid/view/animation/Animation;

.field public d:Landroid/view/animation/Animation;

.field public e:J

.field public final f:Z

.field public final g:Z

.field public h:Z

.field public i:Z

.field public final j:Z

.field public k:Ljava/lang/Runnable;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:Landroid/graphics/Typeface;

.field public o:Z

.field public p:Z

.field public q:Landroid/net/Uri;

.field public r:I

.field public final s:Lkotlin/Lazy;

.field public final t:Lkotlin/Lazy;

.field public final u:Lkotlin/Lazy;

.field public v:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/tapadoo/alerter/R$anim;->alerter_slide_in_from_top:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "AnimationUtils.loadAnima\u2026lerter_slide_in_from_top)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    sget v0, Lcom/tapadoo/alerter/R$anim;->alerter_slide_out_to_top:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "AnimationUtils.loadAnima\u2026alerter_slide_out_to_top)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/tapadoo/alerter/Alert;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->f:Z

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->g:Z

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->j:Z

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->l:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapadoo/alerter/Alert;->m:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->p:Z

    const/16 v1, 0x30

    iput v1, p0, Lcom/tapadoo/alerter/Alert;->r:I

    new-instance v1, Lcom/tapadoo/alerter/Alert$layoutContainer$2;

    invoke-direct {v1, p0}, Lcom/tapadoo/alerter/Alert$layoutContainer$2;-><init>(Lcom/tapadoo/alerter/Alert;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/tapadoo/alerter/Alert;->s:Lkotlin/Lazy;

    new-instance v1, Lcom/tapadoo/alerter/Alert$currentDisplay$2;

    invoke-direct {v1, p1}, Lcom/tapadoo/alerter/Alert$currentDisplay$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/tapadoo/alerter/Alert;->t:Lkotlin/Lazy;

    new-instance v1, Lcom/tapadoo/alerter/Alert$navigationBarHeight$2;

    invoke-direct {v1, p0}, Lcom/tapadoo/alerter/Alert$navigationBarHeight$2;-><init>(Lcom/tapadoo/alerter/Alert;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/tapadoo/alerter/Alert;->u:Lkotlin/Lazy;

    sget v1, Lcom/tapadoo/alerter/R$layout;->alerter_alert_view:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/tapadoo/alerter/R$id;->vAlertContentContainer:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const-string v2, "vAlertContentContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const p1, 0x7fffffff

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;F)V

    sget p1, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic e(Lcom/tapadoo/alerter/Alert;)I
    .locals 0

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getCutoutsHeight()I

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/tapadoo/alerter/Alert;)I
    .locals 0

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getPhysicalScreenHeight()I

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/tapadoo/alerter/Alert;)I
    .locals 0

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getUsableScreenHeight()I

    move-result p0

    return p0
.end method

.method private final getCurrentDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->t:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    return-object v0
.end method

.method private final getCutoutsHeight()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/k;->j(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/accessibility/a;->y(Landroid/view/DisplayCutout;)I

    move-result v1

    invoke-static {v0}, Landroidx/core/view/accessibility/a;->D(Landroid/view/DisplayCutout;)I

    move-result v0

    :goto_0
    add-int v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/media/session/a;->o(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/accessibility/a;->y(Landroid/view/DisplayCutout;)I

    move-result v1

    invoke-static {v0}, Landroidx/core/view/accessibility/a;->D(Landroid/view/DisplayCutout;)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private final getNavigationBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getPhysicalScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private final getUsableScreenHeight()I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/tapadoo/alerter/R$id;->flClickShield:I

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/tapadoo/alerter/Alert;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->h:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/tapadoo/alerter/Alert$startHideAnimation$1;

    invoke-direct {p1, p0}, Lcom/tapadoo/alerter/Alert$startHideAnimation$1;-><init>(Lcom/tapadoo/alerter/Alert;)V

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->k:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/tapadoo/alerter/Alert;->e:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->l:Z

    return v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->v:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapadoo/alerter/Alert;->v:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tapadoo/alerter/Alert;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getButtonTypeFace()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->n:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getContentGravity()I
    .locals 2

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDuration$alerter_release()J
    .locals 2

    iget-wide v0, p0, Lcom/tapadoo/alerter/Alert;->e:J

    return-wide v0
.end method

.method public final getEnterAnimation$alerter_release()Landroid/view/animation/Animation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getExitAnimation$alerter_release()Landroid/view/animation/Animation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getLayoutContainer()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getLayoutGravity()I
    .locals 1

    iget v0, p0, Lcom/tapadoo/alerter/Alert;->r:I

    return v0
.end method

.method public final getOnHideListener$alerter_release()Lcom/tapadoo/alerter/OnHideAlertListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->b:Lcom/tapadoo/alerter/OnHideAlertListener;

    return-object v0
.end method

.method public final getText()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget v0, Lcom/tapadoo/alerter/R$id;->tvText:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget v0, Lcom/tapadoo/alerter/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tapadoo/alerter/Alert$hide$1;

    invoke-direct {v1, p0}, Lcom/tapadoo/alerter/Alert$hide$1;-><init>(Lcom/tapadoo/alerter/Alert;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapadoo/alerter/Alert;->a:Lcom/tapadoo/alerter/OnShowAlertListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tapadoo/alerter/OnShowAlertListener;->a()V

    :cond_0
    iget-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->h:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/tapadoo/alerter/Alert$startHideAnimation$1;

    invoke-direct {p1, p0}, Lcom/tapadoo/alerter/Alert$startHideAnimation$1;-><init>(Lcom/tapadoo/alerter/Alert;)V

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->k:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/tapadoo/alerter/Alert;->e:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->q:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tapadoo/alerter/Alert;->q:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_1
    iget-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->i:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget v0, Lcom/tapadoo/alerter/R$id;->pbProgress:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->f:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->g:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/tapadoo/alerter/R$anim;->alerter_pulse:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_6
    sget p1, Lcom/tapadoo/alerter/R$id;->flIconContainer:I

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_0
    sget p1, Lcom/tapadoo/alerter/R$id;->flRightIconContainer:I

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/tapadoo/alerter/Alert;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/tapadoo/alerter/R$attr;->selectableItemBackground:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tapadoo/alerter/Alert;->r:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sget v3, Lcom/tapadoo/alerter/R$dimen;->alerter_padding_default:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sget v5, Lcom/tapadoo/alerter/R$dimen;->alerter_alert_padding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/tapadoo/alerter/Alert;->r:I

    if-eq v2, v1, :cond_2

    invoke-direct {p0}, Lcom/tapadoo/alerter/Alert;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapadoo/alerter/Alert;->n:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    sget v2, Lcom/tapadoo/alerter/R$id;->llButtonContainer:I

    invoke-virtual {p0, v2}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tapadoo/alerter/Alert;->h()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapadoo/alerter/Alert;->o:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/tapadoo/alerter/R$dimen;->alerter_alert_negative_margin_top:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/support/v4/media/session/a;->o(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroidx/core/view/accessibility/a;->y(Landroid/view/DisplayCutout;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setAlertBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setAlertBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setAlertBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final setBackgroundElevation(F)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "llAlertBackground"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final setButtonTypeFace(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->n:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setContentGravity(I)V
    .locals 4

    sget v0, Lcom/tapadoo/alerter/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    sget v0, Lcom/tapadoo/alerter/R$id;->tvText:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_5
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public final setDismissible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->l:Z

    return-void
.end method

.method public final setDuration$alerter_release(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tapadoo/alerter/Alert;->e:J

    return-void
.end method

.method public final setEnableInfiniteDuration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->h:Z

    return-void
.end method

.method public final setEnableProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->i:Z

    return-void
.end method

.method public final setEnterAnimation$alerter_release(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    return-void
.end method

.method public final setExitAnimation$alerter_release(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    return-void
.end method

.method public final setIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setIconColorFilter(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public final setIconColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setIconPixelSize(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivIcon:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->setIconPixelSize(I)V

    return-void
.end method

.method public final setLayoutGravity(I)V
    .locals 2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tapadoo/alerter/R$anim;->alerter_slide_in_from_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "AnimationUtils.loadAnima\u2026ter_slide_in_from_bottom)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapadoo/alerter/Alert;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tapadoo/alerter/R$anim;->alerter_slide_out_to_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "AnimationUtils.loadAnima\u2026rter_slide_out_to_bottom)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapadoo/alerter/Alert;->d:Landroid/view/animation/Animation;

    :cond_0
    iput p1, p0, Lcom/tapadoo/alerter/Alert;->r:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->llAlertBackground:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnHideListener$alerter_release(Lcom/tapadoo/alerter/OnHideAlertListener;)V
    .locals 0
    .param p1    # Lcom/tapadoo/alerter/OnHideAlertListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->b:Lcom/tapadoo/alerter/OnHideAlertListener;

    return-void
.end method

.method public final setOnShowListener(Lcom/tapadoo/alerter/OnShowAlertListener;)V
    .locals 1
    .param p1    # Lcom/tapadoo/alerter/OnShowAlertListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->a:Lcom/tapadoo/alerter/OnShowAlertListener;

    return-void
.end method

.method public final setProgressColorInt(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->pbProgress:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setProgressColorRes(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->pbProgress:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setRightIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setRightIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setRightIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setRightIconColorFilter(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public final setRightIconColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setRightIconPixelSize(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->ivRightIcon:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivRightIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setRightIconPosition(I)V
    .locals 3

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    :cond_0
    sget v0, Lcom/tapadoo/alerter/R$id;->flRightIconContainer:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v2, "flRightIconContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRightIconSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->setRightIconPixelSize(I)V

    return-void
.end method

.method public final setSound(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tapadoo/alerter/Alert;->q:Landroid/net/Uri;

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(textId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/tapadoo/alerter/R$id;->tvText:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final setTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->tvText:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public final setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "typeface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->tvText:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(titleId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tapadoo/alerter/Alert;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/tapadoo/alerter/R$id;->tvTitle:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final setTitleAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    sget v0, Lcom/tapadoo/alerter/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public final setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "typeface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tapadoo/alerter/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/tapadoo/alerter/Alert;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final setVibrationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapadoo/alerter/Alert;->p:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
