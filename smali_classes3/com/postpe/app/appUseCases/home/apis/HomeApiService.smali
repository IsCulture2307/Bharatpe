.class public interface abstract Lcom/postpe/app/appUseCases/home/apis/HomeApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/postpe/app/appUseCases/home/apis/HomeApiService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003H\'J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003H\'J\u001e\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00040\u00032\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\'J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0003H\'J*\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00040\u00032\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\'J\u0014\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00040\u0003H\'J\u0014\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00040\u0003H\'J\u001e\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00150\u001dj\u0002`\u001e0\u001c0\u0003H\'J\u0014\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u00040\u0003H\'J\u001e\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00040\u00032\u0008\u0008\u0001\u0010\"\u001a\u00020#H\'\u00a8\u0006$"
    }
    d2 = {
        "Lcom/postpe/app/appUseCases/home/apis/HomeApiService;",
        "",
        "fetchActivePlans",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/postpe/app/appUseCases/home_v2/model/VasPlansResponse;",
        "fetchCardAccount",
        "Lcom/postpe/app/appUseCases/home_v2/model/home/CardAccountResponse;",
        "vendorId",
        "",
        "fetchHomeDetails",
        "Lcom/postpe/app/appUseCases/home_v2/model/home/HomeDetailsModel;",
        "fetchOneAssistDetails",
        "Lcom/postpe/app/appUseCases/home_v2/model/home/OneAssistDetails;",
        "oldUserFlow",
        "",
        "fetchPostPeDueDetails",
        "Lcom/postpe/app/appUseCases/home_v2/model/home/PostPeDueDetailModel;",
        "fetchThirdPartyWebToken",
        "Lcom/postpe/app/appUseCases/authv2/WebTokenResponse;",
        "name",
        "",
        "userEmail",
        "fetchUpiInfoDetail",
        "Lcom/postpe/app/appUseCases/home_v2/model/home/UpiInfoDetail;",
        "getPostPeUserV1",
        "Lcom/postpe/app/appUseCases/home/models/PostPeUserV1Model;",
        "getPostPeUsers",
        "Lcom/postpe/app/helperPackages/network/models/ApiResponse;",
        "Ljava/util/ArrayList;",
        "Lcom/postpe/app/appUseCases/contact/models/PostPeUsersData;",
        "logout",
        "Lokhttp3/ResponseBody;",
        "updateOneAssistDetails",
        "oneAssistDetails",
        "Lcom/postpe/app/appUseCases/transaction/models/OneAssistShieldDetails;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract fetchActivePlans()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/postpe/app/appUseCases/home_v2/model/VasPlansResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "upi/vas/active/plans"
    .end annotation
.end method

.method public abstract fetchCardAccount(I)Lio/reactivex/Single;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "vendor_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Lcom/postpe/app/appUseCases/home_v2/model/home/CardAccountResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "postpe-card/card-account/banner/v1"
    .end annotation
.end method

.method public abstract fetchHomeDetails()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/postpe/app/appUseCases/home_v2/model/home/HomeDetailsModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/home-details"
    .end annotation
.end method

.method public abstract fetchOneAssistDetails(Z)Lio/reactivex/Single;
    .param p1    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "oldUserFlow"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/postpe/app/appUseCases/home_v2/model/home/OneAssistDetails;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "upi/vas/one-assist/membership-details"
    .end annotation
.end method

.method public abstract fetchPostPeDueDetails()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/postpe/app/appUseCases/home_v2/model/home/PostPeDueDetailModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "credit-account/v1"
    .end annotation
.end method

.method public abstract fetchThirdPartyWebToken(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "userEmail"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/postpe/app/appUseCases/authv2/WebTokenResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "customer/v1/postpe-apps"
    .end annotation
.end method

.method public abstract fetchUpiInfoDetail()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/postpe/app/appUseCases/home_v2/model/home/UpiInfoDetail;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "upi/home/detail"
    .end annotation
.end method

.method public abstract getPostPeUserV1()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/postpe/app/appUseCases/home/models/PostPeUserV1Model;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "postpe-user/v1"
    .end annotation
.end method

.method public abstract getPostPeUsers()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/postpe/app/helperPackages/network/models/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "customer/get-contact-postpe"
    .end annotation
.end method

.method public abstract logout()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "customer/logout"
    .end annotation
.end method

.method public abstract updateOneAssistDetails(Lcom/postpe/app/appUseCases/transaction/models/OneAssistShieldDetails;)Lio/reactivex/Single;
    .param p1    # Lcom/postpe/app/appUseCases/transaction/models/OneAssistShieldDetails;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/postpe/app/appUseCases/transaction/models/OneAssistShieldDetails;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "upi/vas/one-assist/onboard"
    .end annotation
.end method
