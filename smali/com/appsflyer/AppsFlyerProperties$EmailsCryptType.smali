.class public final enum Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailsCryptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field private static final synthetic valueOf:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;


# instance fields
.field private final AFInAppEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    new-instance v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "SHA256"

    invoke-direct {v1, v4, v2, v3}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    filled-new-array {v0, v1}, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->valueOf:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->AFInAppEventType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    const-class v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->valueOf:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v0}, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->AFInAppEventType:I

    return v0
.end method
