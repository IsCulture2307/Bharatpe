.class public Lcom/google/android/material/stateful/ExtendableSavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/stateful/ExtendableSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Landroidx/collection/SimpleArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/stateful/ExtendableSavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/stateful/ExtendableSavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/stateful/ExtendableSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 6
    new-array v0, p2, [Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 8
    new-array v1, p2, [Landroid/os/Bundle;

    .line 9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 10
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1, p2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/stateful/ExtendableSavedState;->c:Landroidx/collection/SimpleArrayMap;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/stateful/ExtendableSavedState;->c:Landroidx/collection/SimpleArrayMap;

    .line 11
    aget-object v3, v0, p1

    aget-object v4, v1, p1

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/stateful/ExtendableSavedState;->c:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtendableSavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/material/stateful/ExtendableSavedState;->c:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/material/stateful/ExtendableSavedState;->c:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Landroid/os/Bundle;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p2, v4}, Landroidx/collection/SimpleArrayMap;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-virtual {p2, v4}, Landroidx/collection/SimpleArrayMap;->j(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
