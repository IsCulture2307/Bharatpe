.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field private static final synthetic values:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v2, "NETWORK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v3, "HTTP_STATUS_CODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v4, "UNEXPECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v4, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v5, "DEVELOPER_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->values:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .locals 1

    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .locals 1

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->values:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method
