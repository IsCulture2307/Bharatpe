.class public Lnet/sqlcipher/CursorWindow;
.super Landroid/database/CursorWindow;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnet/sqlcipher/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static allocation:Lnet/sqlcipher/CursorWindowAllocation;


# instance fields
.field private mRequiredPos:I

.field private mStartPos:I

.field private nWindow:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sqlcipher/DefaultCursorWindowAllocation;

    invoke-direct {v0}, Lnet/sqlcipher/DefaultCursorWindowAllocation;-><init>()V

    sput-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    new-instance v0, Lnet/sqlcipher/CursorWindow$1;

    invoke-direct {v0}, Lnet/sqlcipher/CursorWindow$1;-><init>()V

    sput-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p2}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 10
    invoke-direct {p0, p2}, Lnet/sqlcipher/CursorWindow;->native_init(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sget-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/sqlcipher/DefaultCursorWindowAllocation;

    invoke-direct {v0}, Lnet/sqlcipher/DefaultCursorWindowAllocation;-><init>()V

    sput-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    :cond_0
    sget-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    .line 3
    invoke-interface {v0}, Lnet/sqlcipher/CursorWindowAllocation;->getInitialAllocationSize()J

    move-result-wide v3

    sget-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    .line 4
    invoke-interface {v0}, Lnet/sqlcipher/CursorWindowAllocation;->getGrowthPaddingSize()J

    move-result-wide v5

    sget-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    .line 5
    invoke-interface {v0}, Lnet/sqlcipher/CursorWindowAllocation;->getMaxAllocationSize()J

    move-result-wide v7

    move-object v1, p0

    move v2, p1

    .line 6
    invoke-direct/range {v1 .. v8}, Lnet/sqlcipher/CursorWindow;->native_init(ZJJJ)V

    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method public static getCursorWindowAllocation()Lnet/sqlcipher/CursorWindowAllocation;
    .locals 1

    sget-object v0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    return-object v0
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native getType_native(II)I
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(Landroid/os/IBinder;)V
.end method

.method private native native_init(ZJJJ)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;
    .locals 1

    sget-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sqlcipher/CursorWindow;

    return-object p0
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method public static setCursorWindowAllocation(Lnet/sqlcipher/CursorWindowAllocation;)V
    .locals 0

    sput-object p0, Lnet/sqlcipher/CursorWindow;->allocation:Lnet/sqlcipher/CursorWindowAllocation;

    return-void
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->allocRow_native()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 1

    if-eqz p3, :cond_2

    iget-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v0, :cond_0

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    iget-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/sqlcipher/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CharArrayBuffer should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 4

    iget-wide v0, p0, Lnet/sqlcipher/CursorWindow;->nWindow:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    return-void
.end method

.method public freeLastRow()V
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getBlob_native(II)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getDouble(II)D
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getFloat(II)F
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float p1, p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getInt(II)I
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getLong(II)J
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getNumRows()I
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->getNumRows_native()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getRequiredPosition()I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mRequiredPos:I

    return v0
.end method

.method public getShort(II)S
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getString_native(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getType(II)I
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->getType_native(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isBlob(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->isBlob_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isFloat(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->isFloat_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isLong(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->isInteger_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isNull(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->isNull_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isString(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->isString_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public onAllReferencesReleased()V
    .locals 0

    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    invoke-super {p0}, Landroid/database/CursorWindow;->onAllReferencesReleased()V

    return-void
.end method

.method public putBlob([BII)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lnet/sqlcipher/CursorWindow;->putBlob_native([BII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putDouble(DII)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sqlcipher/CursorWindow;->putDouble_native(DII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putLong(JII)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sqlcipher/CursorWindow;->putLong_native(JII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putNull(II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/CursorWindow;->putNull_native(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lnet/sqlcipher/CursorWindow;->putString_native(Ljava/lang/String;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public setNumColumns(I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWindow;->setNumColumns_native(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public setRequiredPosition(I)V
    .locals 0

    iput p1, p0, Lnet/sqlcipher/CursorWindow;->mRequiredPos:I

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget p2, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
