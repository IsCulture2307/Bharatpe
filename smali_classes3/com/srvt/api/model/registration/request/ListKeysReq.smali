.class public final Lcom/srvt/api/model/registration/request/ListKeysReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/srvt/network/APIRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/srvt/api/model/registration/request/ListKeysReq;",
        "Lcom/srvt/network/APIRequest;",
        "()V",
        "apiPath",
        "",
        "getApiPath",
        "()Ljava/lang/String;",
        "setApiPath",
        "(Ljava/lang/String;)V",
        "defaultError",
        "Lcom/srvt/manager/universalException/UniversalSDKException;",
        "getDefaultError",
        "()Lcom/srvt/manager/universalException/UniversalSDKException;",
        "setDefaultError",
        "(Lcom/srvt/manager/universalException/UniversalSDKException;)V",
        "getRequestParameters",
        "Lcom/srvt/network/request/UniversalSDKRequest;",
        "SrvtUniversalSDK_POSTPAY_PRODCL_1_8Release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private apiPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private defaultError:Lcom/srvt/manager/universalException/UniversalSDKException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "list-keys"

    iput-object v0, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->apiPath:Ljava/lang/String;

    sget-object v0, Lcom/srvt/manager/universalException/UniversalSDKException;->listKeysFailed:Lcom/srvt/manager/universalException/UniversalSDKException;

    iput-object v0, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->defaultError:Lcom/srvt/manager/universalException/UniversalSDKException;

    return-void
.end method


# virtual methods
.method public getApiPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->apiPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultError()Lcom/srvt/manager/universalException/UniversalSDKException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->defaultError:Lcom/srvt/manager/universalException/UniversalSDKException;

    return-object v0
.end method

.method public getRequestParameters()Lcom/srvt/network/request/UniversalSDKRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/srvt/network/request/UniversalSDKRequest;

    invoke-direct {v0}, Lcom/srvt/network/request/UniversalSDKRequest;-><init>()V

    sget-object v1, Lcom/srvt/helpers/UniversalSDKCache;->INSTANCE:Lcom/srvt/helpers/UniversalSDKCache;

    invoke-virtual {v1}, Lcom/srvt/helpers/UniversalSDKCache;->getMobileNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/srvt/network/request/UniversalSDKRequest;->setMobile(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/srvt/helpers/UniversalSDKCache;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/srvt/network/request/UniversalSDKRequest;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/srvt/helpers/UniversalSDKCache;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/srvt/network/request/UniversalSDKRequest;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/srvt/helpers/UniversalSDKCache;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/srvt/network/request/UniversalSDKRequest;->setSeqNo(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/srvt/helpers/UniversalSDKCache;->getChannelCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/srvt/network/request/UniversalSDKRequest;->setChannelCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public setApiPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->apiPath:Ljava/lang/String;

    return-void
.end method

.method public setDefaultError(Lcom/srvt/manager/universalException/UniversalSDKException;)V
    .locals 1
    .param p1    # Lcom/srvt/manager/universalException/UniversalSDKException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/srvt/api/model/registration/request/ListKeysReq;->defaultError:Lcom/srvt/manager/universalException/UniversalSDKException;

    return-void
.end method
