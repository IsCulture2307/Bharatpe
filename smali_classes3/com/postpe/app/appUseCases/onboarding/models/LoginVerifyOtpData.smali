.class public final Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u001a\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0010\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0012\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006R\u001a\u0010\u0014\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0004\u001a\u0004\u0008\u0015\u0010\u0006R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006R\u001a\u0010\u0018\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;",
        "",
        "",
        "fcmToken",
        "Ljava/lang/String;",
        "getFcmToken",
        "()Ljava/lang/String;",
        "deeplink",
        "getDeeplink",
        "",
        "existingUser",
        "Z",
        "a",
        "()Z",
        "hardUpdate",
        "getHardUpdate",
        "softUpdate",
        "getSoftUpdate",
        "token",
        "c",
        "refreshToken",
        "b",
        "tokenExpirationTime",
        "d",
        "refreshTokenExpirationTime",
        "getRefreshTokenExpirationTime",
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
.field private final deeplink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deepLink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final existingUser:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "existingUser"
    .end annotation
.end field

.field private final fcmToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcmToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hardUpdate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardUpdate"
    .end annotation
.end field

.field private final refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final refreshTokenExpirationTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshTokenExpirationTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final softUpdate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softUpdate"
    .end annotation
.end field

.field private final token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tokenExpirationTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenExpirationTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->existingUser:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->tokenExpirationTime:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;

    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->fcmToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->fcmToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->deeplink:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->deeplink:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->existingUser:Z

    iget-boolean v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->existingUser:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->hardUpdate:Z

    iget-boolean v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->hardUpdate:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->softUpdate:Z

    iget-boolean v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->softUpdate:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->tokenExpirationTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->tokenExpirationTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshTokenExpirationTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshTokenExpirationTime:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->fcmToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->deeplink:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->existingUser:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    :cond_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->hardUpdate:Z

    if-eqz v3, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->softUpdate:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    add-int/2addr v0, v4

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->token:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/b;->f(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshToken:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/b;->f(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->tokenExpirationTime:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshTokenExpirationTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->fcmToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->deeplink:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->existingUser:Z

    iget-boolean v3, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->hardUpdate:Z

    iget-boolean v4, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->softUpdate:Z

    iget-object v5, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->token:Ljava/lang/String;

    iget-object v6, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->tokenExpirationTime:Ljava/lang/String;

    iget-object v8, p0, Lcom/postpe/app/appUseCases/onboarding/models/LoginVerifyOtpData;->refreshTokenExpirationTime:Ljava/lang/String;

    const-string v9, "LoginVerifyOtpData(fcmToken="

    const-string v10, ", deeplink="

    const-string v11, ", existingUser="

    invoke-static {v9, v0, v10, v1, v11}, Landroidx/lifecycle/e;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hardUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", softUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenExpirationTime="

    const-string v2, ", refreshTokenExpirationTime="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/compose/animation/b;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, v8, v1}, La/a/a/e/a/k;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
