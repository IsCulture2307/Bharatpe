.class public final enum Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BRANCH_API_VERSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

.field public static final enum V1:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

.field public static final enum V1_CPID:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

.field public static final enum V1_LATD:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

.field public static final enum V2:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V1:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    new-instance v1, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    const-string v2, "V1_CPID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V1_CPID:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    new-instance v2, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    const-string v3, "V1_LATD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V1_LATD:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    new-instance v3, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    const-string v4, "V2"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V2:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    filled-new-array {v0, v1, v2, v3}, [Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    move-result-object v0

    sput-object v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->$VALUES:[Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;
    .locals 1

    const-class v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;
    .locals 1

    sget-object v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->$VALUES:[Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    invoke-virtual {v0}, [Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    return-object v0
.end method
