.class final enum Lco/invoid/offlineaadhaar/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/invoid/offlineaadhaar/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lco/invoid/offlineaadhaar/d;

.field public static final enum b:Lco/invoid/offlineaadhaar/d;

.field public static final enum c:Lco/invoid/offlineaadhaar/d;

.field public static final enum d:Lco/invoid/offlineaadhaar/d;

.field public static final enum e:Lco/invoid/offlineaadhaar/d;

.field public static final enum f:Lco/invoid/offlineaadhaar/d;

.field public static final enum g:Lco/invoid/offlineaadhaar/d;

.field public static final synthetic h:[Lco/invoid/offlineaadhaar/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lco/invoid/offlineaadhaar/d;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/invoid/offlineaadhaar/d;->a:Lco/invoid/offlineaadhaar/d;

    new-instance v1, Lco/invoid/offlineaadhaar/d;

    const-string v2, "DOWNLOADING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lco/invoid/offlineaadhaar/d;->b:Lco/invoid/offlineaadhaar/d;

    new-instance v2, Lco/invoid/offlineaadhaar/d;

    const-string v3, "AUTH_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lco/invoid/offlineaadhaar/d;->c:Lco/invoid/offlineaadhaar/d;

    new-instance v3, Lco/invoid/offlineaadhaar/d;

    const-string v4, "FILE_DOWNLOADED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lco/invoid/offlineaadhaar/d;->d:Lco/invoid/offlineaadhaar/d;

    new-instance v4, Lco/invoid/offlineaadhaar/d;

    const-string v5, "DOWNLOADING_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lco/invoid/offlineaadhaar/d;->e:Lco/invoid/offlineaadhaar/d;

    new-instance v5, Lco/invoid/offlineaadhaar/d;

    const-string v6, "FILE_UPLOADING_ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lco/invoid/offlineaadhaar/d;->f:Lco/invoid/offlineaadhaar/d;

    new-instance v6, Lco/invoid/offlineaadhaar/d;

    const-string v7, "COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lco/invoid/offlineaadhaar/d;->g:Lco/invoid/offlineaadhaar/d;

    filled-new-array/range {v0 .. v6}, [Lco/invoid/offlineaadhaar/d;

    move-result-object v0

    sput-object v0, Lco/invoid/offlineaadhaar/d;->h:[Lco/invoid/offlineaadhaar/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/invoid/offlineaadhaar/d;
    .locals 1

    const-class v0, Lco/invoid/offlineaadhaar/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/invoid/offlineaadhaar/d;

    return-object p0
.end method

.method public static values()[Lco/invoid/offlineaadhaar/d;
    .locals 1

    sget-object v0, Lco/invoid/offlineaadhaar/d;->h:[Lco/invoid/offlineaadhaar/d;

    invoke-virtual {v0}, [Lco/invoid/offlineaadhaar/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/invoid/offlineaadhaar/d;

    return-object v0
.end method
