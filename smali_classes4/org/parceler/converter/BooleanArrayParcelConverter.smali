.class public Lorg/parceler/converter/BooleanArrayParcelConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/parceler/ParcelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/ParcelConverter<",
        "[Z>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 1

    check-cast p1, [Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
