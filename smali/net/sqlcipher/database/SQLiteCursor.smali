.class public Lnet/sqlcipher/database/SQLiteCursor;
.super Lnet/sqlcipher/AbstractWindowedCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;,
        Lnet/sqlcipher/database/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private fillWindowForwardOnly:Z

.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mCursorWindowCapacity:I

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Lnet/sqlcipher/database/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)V
    .locals 3

    invoke-direct {p0}, Lnet/sqlcipher/AbstractWindowedCursor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->fillWindowForwardOnly:Z

    const v1, 0x7fffffff

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    new-instance v2, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v2}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    :try_start_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    iget-object p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteQuery;->columnCountLocked()I

    move-result p2

    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object p3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {p3, v0}, Lnet/sqlcipher/database/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object p3, p4, v0

    const-string p4, "_id"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput v0, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-void

    :goto_2
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw p2
.end method

.method public static synthetic access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method public static synthetic access$100(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/CursorWindow;
    .locals 0

    iget-object p0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic access$202(Lnet/sqlcipher/database/SQLiteCursor;Ljava/util/concurrent/locks/ReentrantLock;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p1
.end method

.method public static synthetic access$300(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 0

    iget p0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    return p0
.end method

.method public static synthetic access$400(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 0

    iget p0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    return p0
.end method

.method public static synthetic access$500(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 0

    iget p0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return p0
.end method

.method public static synthetic access$502(Lnet/sqlcipher/database/SQLiteCursor;I)I
    .locals 0

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return p1
.end method

.method public static synthetic access$512(Lnet/sqlcipher/database/SQLiteCursor;I)I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method public static synthetic access$600(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/database/SQLiteQuery;
    .locals 0

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    return-object p0
.end method

.method public static synthetic access$700(Lnet/sqlcipher/database/SQLiteCursor;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 5

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lnet/sqlcipher/CursorWindow;

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 2
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    :goto_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->fillWindowForwardOnly:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    if-ne v0, v2, :cond_2

    .line 5
    invoke-virtual {p0, p1, v1}, Lnet/sqlcipher/database/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    .line 6
    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/database/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 7
    invoke-virtual {v3, v0}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    iget-object v3, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 8
    invoke-virtual {v3, p1}, Lnet/sqlcipher/CursorWindow;->setRequiredPosition(I)V

    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v3, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    .line 9
    invoke-virtual {p1, v3, v4, v1}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result p1

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 10
    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result p1

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    :cond_3
    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    if-ne p1, v2, :cond_4

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 11
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {v0, p0, v1}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string v1, "query thread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    .line 14
    throw p1
.end method

.method private queryThreadLock()V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->close()V

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteProgram;->close()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorClosed()V

    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->supportsUpdates()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " SET "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    move v8, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=?"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WHERE "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v9, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lnet/sqlcipher/database/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null rowId or values found! rowId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    iget-object p1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->onChange(Z)V

    return v2

    :goto_4
    :try_start_3
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public cursorPickFillWindowStartPosition(II)I
    .locals 0

    div-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public deactivate()V
    .locals 1

    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->deactivate()V

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method public deleteRow()Z
    .locals 7

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v6, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move v1, v2

    :goto_0
    :try_start_1
    iget v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->requery()Z

    invoke-virtual {p0, v3}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->onChange(Z)V

    return v0

    :cond_1
    return v2

    :goto_1
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    :cond_2
    :goto_2
    return v2
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4

    iget-object p2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 15
    new-instance p2, Lnet/sqlcipher/CursorWindow;

    invoke-direct {p2, v0}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object p2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    goto :goto_0

    :cond_0
    iget p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/2addr p2, v0

    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 16
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object p2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 17
    invoke-virtual {p2}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    :goto_0
    iget-boolean p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->fillWindowForwardOnly:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    iget p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    if-ne p2, v1, :cond_2

    .line 19
    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/database/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    .line 20
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result p2

    :goto_1
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 21
    invoke-virtual {v2, p2}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 22
    invoke-virtual {v2, p1}, Lnet/sqlcipher/CursorWindow;->setRequiredPosition(I)V

    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    .line 23
    invoke-virtual {p1, v2, v3, v0}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result p1

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 24
    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result p1

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorWindowCapacity:I

    :cond_3
    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    if-ne p1, v1, :cond_4

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 25
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p2, p0, v0}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string v0, "query thread"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 27
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    .line 28
    throw p1
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->close()V

    invoke-static {}, Lnet/sqlcipher/database/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    array-length v1, v0

    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    :cond_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result p1

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result v0

    add-int/2addr v0, p1

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sqlcipher/AbstractCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    const v0, 0x7fffffff

    if-ne v0, p1, :cond_0

    iget p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    if-eq v0, p1, :cond_2

    :cond_0
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    new-instance p1, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {p1, p0}, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;-><init>(Lnet/sqlcipher/database/SQLiteCursor;)V

    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    iget-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->notifyDataSetChange()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public requery()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v1, p0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->requery()Z

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setFillWindowForwardOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->fillWindowForwardOnly:Z

    return-void
.end method

.method public setLoadStyle(II)V
    .locals 0

    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lnet/sqlcipher/database/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Lnet/sqlcipher/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw p1

    :cond_0
    :goto_0
    iput-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
