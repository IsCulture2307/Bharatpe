.class public final Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThirdPartyWebSupportData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;",
        "",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;

    iget-object v1, p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThirdPartyWebSupportData(screenKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/postpe/app/appUseCases/thirdPartyWebView/thirdPartyWebSupport/ThirdPartyWebSupportHandler$ThirdPartyWebSupportData;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, La/a/a/e/a/k;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
