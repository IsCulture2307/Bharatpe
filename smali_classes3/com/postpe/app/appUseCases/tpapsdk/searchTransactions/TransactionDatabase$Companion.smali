.class public final Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase$Companion;",
        "",
        "",
        "DATABASE_NAME",
        "Ljava/lang/String;",
        "Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;",
        "instance",
        "Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static a()Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;
    .locals 4

    const-string v0, "com.postpe.app.database_encryption_key"

    invoke-static {v0}, Lcom/postpe/app/helperPackages/security/localstorage/EncryptionUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/postpe/app/helperPackages/security/localstorage/EncryptionUtils;->b()Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lnet/sqlcipher/database/SupportFactory;

    invoke-direct {v1, v0}, Lnet/sqlcipher/database/SupportFactory;-><init>([B)V

    sget-object v0, Lcom/postpe/app/helperPackages/base/PostPeApplication;->d:Lcom/postpe/app/helperPackages/base/PostPeApplication;

    invoke-static {}, Lcom/postpe/app/helperPackages/base/PostPeApplication$Companion;->a()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;

    const-string v3, "transaction-db"

    invoke-static {v0, v2, v3}, Landroidx/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->g:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/room/RoomDatabase$Builder;->j:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/room/RoomDatabase$Builder;->k:Z

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->b()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/postpe/app/appUseCases/tpapsdk/searchTransactions/TransactionDatabase;

    return-object v0
.end method
