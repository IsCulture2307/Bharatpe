.class final Landroidx/camera/core/impl/AutoValue_Config_Option;
.super Landroidx/camera/core/impl/Config$Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/Config$Option<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    iput-object p3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->b:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null valueClass"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->c:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Option{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", valueClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
