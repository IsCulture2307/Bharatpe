.class public Lorg/npci/upi/security/pinactivitycomponent/GetCredential;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetCredential"

.field private static _instance:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

.field public static callbackFromApp:Ljava/lang/String;


# instance fields
.field private bankImage:Landroid/widget/ImageView;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapPicture:Lorg/npci/upi/security/pinactivitycomponent/a;

.field private final context:Landroid/content/Context;

.field private credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

.field private credType:Ljava/lang/String;

.field private currentFragment:Lorg/npci/upi/security/pinactivitycomponent/s;

.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private doubleBackToExitPressedOnce:Z

.field private fragment:Landroidx/fragment/app/Fragment;

.field private imageUrl:Ljava/lang/String;

.field private lite:Lorg/npci/upi/security/pinactivitycomponent/o;

.field private mActivityHeight:I

.field private mTransactionBarArrow:Landroid/widget/ImageView;

.field private mTransactionDetailScroller:Landroid/view/View;

.field private mTransactionDetailSpace:Landroid/view/View;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private numDigitsOfOTP:I

.field private showFragment:Ljava/lang/Boolean;

.field private smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;

.field private urlChecker:Ljava/lang/Boolean;

.field private verifiedMerchant:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    iput-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/s;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->showFragment:Ljava/lang/Boolean;

    const-string v2, ""

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->imageUrl:Ljava/lang/String;

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->urlChecker:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->verifiedMerchant:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credType:Ljava/lang/String;

    sput-object p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->_instance:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    return-void
.end method

.method public static _getInstance()Lorg/npci/upi/security/pinactivitycomponent/GetCredential;
    .locals 1

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->_instance:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    return-object v0
.end method

.method public static synthetic access$000(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V
    .locals 0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->goBack()V

    return-void
.end method

.method public static synthetic access$1000(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    return p1
.end method

.method public static synthetic access$1100(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)I
    .locals 0

    iget p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    return p0
.end method

.method public static synthetic access$200(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Lorg/npci/upi/security/pinactivitycomponent/s;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/s;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Z
    .locals 0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->isTransactionDetailsExpanded()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->toggleTransactionDetails(Z)V

    return-void
.end method

.method public static synthetic access$500(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static decodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private goBack()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error"

    const-string v2, "USER_ABORTED"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->g()Lorg/npci/upi/security/pinactivitycomponent/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/b;->c()Landroid/os/ResultReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private hasDeviceLock()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/npci/upi/security/pinactivitycomponent/UserAuthInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private headLessFlow()V
    .locals 8

    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->p()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "subtype"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v3}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IDENTITY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    const-string v1, "enableUserAuth"

    const-string v4, "true"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->hasDeviceLock()Ljava/lang/Boolean;

    :cond_1
    new-instance v4, Lorg/npci/upi/security/pinactivitycomponent/o;

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v6}, Lorg/npci/upi/security/pinactivitycomponent/e;->d()Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v7}, Lorg/npci/upi/security/pinactivitycomponent/e;->p()Lorg/json/JSONArray;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v3}, Lorg/npci/upi/security/pinactivitycomponent/o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    iput-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/o;->a()V

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v3, v1}, Lorg/npci/upi/security/pinactivitycomponent/o;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v3}, Lorg/npci/upi/security/pinactivitycomponent/o;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/o;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v0, v5}, Lorg/npci/upi/security/pinactivitycomponent/o;->a([Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "SIGNATURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/o;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string v1, "TECHNICAL_ERROR"

    invoke-virtual {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->showError(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private isTransactionDetailsExpanded()Z
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pix(F)I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private readUIArguments()V
    .locals 4

    const-string v0, "verifiedMerchant"

    const-string v1, "bankImage"

    const-string v2, "bankImageUrl"

    :try_start_0
    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v3}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v3}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->imageUrl:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->urlChecker:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->decodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->verifiedMerchant:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private registerSMSReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    :try_start_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register SMS broadcast receiver (Ignoring)"

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupKeyboard()Lorg/npci/upi/security/pinactivitycomponent/Keypad;
    .locals 2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->fragmentTelKeyboard:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$3;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$3;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setOnKeyPressCallback(Lorg/npci/upi/security/pinactivitycomponent/Keypad$a;)V

    :cond_0
    return-object v0
.end method

.method private toggleTransactionDetails(Z)V
    .locals 5

    const/16 v0, 0x12c

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionBarArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v1, v0, v3}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->rotateView(FFILandroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->rotateView(FFILandroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mActivityHeight:I

    :cond_1
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    int-to-float v4, v0

    mul-float/2addr v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$7;

    invoke-direct {v2, p0, p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$7;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private unregisterSMSReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister SMS receiver (Ignoring)"

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private validateLiteRequest()Ljava/lang/Boolean;
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/o;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v3}, Lorg/npci/upi/security/pinactivitycomponent/e;->d()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/e;->p()Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v5}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/npci/upi/security/pinactivitycomponent/o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    sget-object v2, Lorg/npci/upi/security/pinactivitycomponent/CLConstants;->FIELD_LOAD_MONEY_FLOW:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/o;->a(Ljava/lang/Integer;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    sget-object v2, Lorg/npci/upi/security/pinactivitycomponent/CLConstants;->FIELD_LITE_PAY_FLOW:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/o;->a(Ljava/lang/Integer;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    instance-of v2, v1, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string v2, "SYNC_REQUIRED"

    :goto_2
    invoke-virtual {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->showError(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string v2, "INVALID_REQUEST"

    goto :goto_2

    :cond_2
    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string v2, "LITE_KEYS_ROTATION_NEEDED"

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string v2, "TECHNICAL_ERROR"

    goto :goto_2

    :goto_3
    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/n;

    invoke-direct {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/n;-><init>(Landroid/content/Context;)V

    const-string v1, "org.npci.upi.language.pref"

    const-string v2, "en_US"

    invoke-virtual {v0, v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public checkSMSReadPermission()Z
    .locals 1

    const-string v0, "android.permission.READ_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkSMSReceivePermission()Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCredBlockBuilder()Lorg/npci/upi/security/pinactivitycomponent/e;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    return-object v0
.end method

.method public getLiteInstace()Lorg/npci/upi/security/pinactivitycomponent/o;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    return-object v0
.end method

.method public loadFragment(Lorg/npci/upi/security/pinactivitycomponent/s;Landroid/os/Bundle;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_inner_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->l(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->e()I

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setCurrentFragment(Lorg/npci/upi/security/pinactivitycomponent/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CommonLibrary"

    const-string p2, "Exception while loading Fragment"

    invoke-static {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    :try_start_0
    sget-object p2, Lorg/npci/upi/security/pinactivitycomponent/CLConstants;->FIELD_LOAD_MONEY_FLOW:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/o;->d()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/npci/upi/security/pinactivitycomponent/CLConstants;->FIELD_LITE_PAY_FLOW:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->lite:Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/o;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const-string p2, "TECHNICAL_ERROR"

    invoke-virtual {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->showError(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error"

    const-string v3, "USER_ABORTED"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/e;->g()Lorg/npci/upi/security/pinactivitycomponent/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/b;->c()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/w;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/w;->f()V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$string;->back_button_exit_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$2;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$2;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/j;

    invoke-direct {v0}, Lorg/npci/upi/security/pinactivitycomponent/j;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-direct {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/e;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/npci/upi/security/pinactivitycomponent/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->readUIArguments()V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/e;->p()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SIGNATURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->validateLiteRequest()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/e;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->headLessFlow()V

    return-void

    :cond_1
    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->activity_pin_activity_component:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->urlChecker:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/a;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->imageUrl:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->bitmapPicture:Lorg/npci/upi/security/pinactivitycomponent/a;

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->bank_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->bankImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->renderTransactionBar()V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->renderTransactionDetails()V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setupKeyboard()Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    move-result-object p1

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->toolBar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_inner_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_info_root:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-gt v3, v4, :cond_5

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x4a0

    if-gt v2, v3, :cond_5

    const/16 v3, 0x320

    if-gt v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x118

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    move p1, v0

    goto :goto_0

    :cond_5
    const/16 p1, 0x32

    :goto_0
    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/w;

    invoke-direct {p1}, Lorg/npci/upi/security/pinactivitycomponent/w;-><init>()V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->loadFragment(Lorg/npci/upi/security/pinactivitycomponent/s;Landroid/os/Bundle;Z)V

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->go_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$1;

    invoke-direct {v0, p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$1;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :catch_0
    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->_instance:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->_instance:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->unregisterSMSReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->checkSMSReceivePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Lorg/npci/upi/security/pinactivitycomponent/GetCredential$1;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/GetCredential$a;

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->registerSMSReceiver()V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "RECEIVE_SMS permission not provided by the App. This will affect Auto OTP detection feature of Common Library"

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public renderTransactionBar()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "mobileNumber"

    const-string v3, "mandate"

    iget-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "payerBankName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    iget-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/e;->d()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v6}, Lorg/npci/upi/security/pinactivitycomponent/e;->e()Lorg/json/JSONArray;

    move-result-object v6

    if-nez v0, :cond_1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/c;

    const-string v2, "l12"

    const-string v3, "l12.message"

    invoke-direct {v0, v1, v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v7, "txnAmount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v9, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    const-string v10, "credType"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/npci/upi/security/pinactivitycomponent/e;->a(Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v9, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v9}, Lorg/npci/upi/security/pinactivitycomponent/e;->n()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_3

    iget-object v9, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v9}, Lorg/npci/upi/security/pinactivitycomponent/e;->n()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v9}, Lorg/npci/upi/security/pinactivitycomponent/e;->n()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    move-object v10, v4

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v11, "account"

    const-string v12, "value"

    const-string v13, "name"

    if-ge v9, v0, :cond_6

    :try_start_1
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "XXXX"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "payeeVpa"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    sget-object v11, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_a

    :try_start_2
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "payeeName"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_6
    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v2, v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_7
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_6

    :cond_8
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_8
    sget-object v14, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v14, v0}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    move-object v2, v4

    :goto_9
    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_root:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->tv_acc_or_payee:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v11, Lorg/npci/upi/security/pinactivitycomponent/R$id;->tv_acc_or_payee_name:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget v14, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_payee_label:I

    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    sget v15, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_payee_value:I

    invoke-virtual {v1, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    sget v8, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_amount_title:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v16, v9

    sget v9, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_amount_value:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v17, v12

    sget v12, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_arrow:I

    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionBarArrow:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_d

    const-string v0, "null"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmpl-double v0, v10, v18

    if-lez v0, :cond_d

    const-string v0, "\u20b9 "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credType:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Maximum Mandate Amount: "

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "Mandate Against: "

    :goto_a
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_c
    const-string v3, "Sending: "

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "To: "

    goto :goto_a

    :goto_b
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_d
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_f

    :try_start_3
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "note"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v7, v17

    :try_start_4
    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_d

    :cond_e
    move-object/from16 v7, v17

    goto :goto_e

    :goto_d
    sget-object v9, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Lorg/npci/upi/security/pinactivitycomponent/q;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v7

    goto :goto_c

    :cond_f
    :goto_f
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mActivityHeight:I

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$4;

    invoke-direct {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$4;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_scroller:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_expanded_space:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    iget-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$5;

    invoke-direct {v2, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$5;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    if-eqz v0, :cond_10

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$6;

    invoke-direct {v2, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential$6;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_info_root:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    return-void
.end method

.method public renderTransactionDetails()V
    .locals 15

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/e;->e()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->layout_transaction_details_item:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_item_name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_item_value:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lorg/npci/upi/security/pinactivitycomponent/R$id;->verified:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lorg/npci/upi/security/pinactivitycomponent/R$id;->verified_merchant:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "name"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "payeeName"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "mandate"

    const-string v14, "value"

    if-eqz v12, :cond_2

    iget-object v10, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credType:Ljava/lang/String;

    if-eqz v10, :cond_0

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "Mandate against"

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    const-string v10, "paying to"

    goto :goto_1

    :goto_2
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "VERIFIED MERCHANT"

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->verifiedMerchant:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "txnAmount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Amount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "note"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Details"

    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mobileNumber"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mobile"

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "refUrl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "ref url"

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "refId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Ref id"

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mandateSubType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "Mandate Type"

    goto :goto_4

    :cond_8
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    :goto_6
    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credType:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "Maximum Mandate Amount"

    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_a
    const-string v7, "AMOUNT"

    goto :goto_7

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u20b9 "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v3}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->pix(F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public rotateView(FFILandroid/view/View;)V
    .locals 8

    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p1, p3

    invoke-virtual {v7, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setCurrentFragment(Lorg/npci/upi/security/pinactivitycomponent/s;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/s;

    return-void
.end method

.method public setNumDigitsOfOTP(I)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/e;->g()Lorg/npci/upi/security/pinactivitycomponent/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/b;->c()Landroid/os/ResultReceiver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credBlockBuilder:Lorg/npci/upi/security/pinactivitycomponent/e;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/e;->g()Lorg/npci/upi/security/pinactivitycomponent/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/b;->c()Landroid/os/ResultReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public triggredOTPResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->fragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/w;

    invoke-virtual {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/w;->a(Ljava/lang/String;)V

    return-void
.end method
