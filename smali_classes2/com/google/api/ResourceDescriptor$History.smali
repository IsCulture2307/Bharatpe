.class public final enum Lcom/google/api/ResourceDescriptor$History;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "History"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ResourceDescriptor$History$HistoryVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/ResourceDescriptor$History;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/ResourceDescriptor$History;

.field public static final enum FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

.field public static final FUTURE_MULTI_PATTERN_VALUE:I = 0x2

.field public static final enum HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

.field public static final HISTORY_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

.field public static final ORIGINALLY_SINGLE_PATTERN_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/ResourceDescriptor$History;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/api/ResourceDescriptor$History;

    const-string v1, "HISTORY_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    new-instance v1, Lcom/google/api/ResourceDescriptor$History;

    const-string v2, "ORIGINALLY_SINGLE_PATTERN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/ResourceDescriptor$History;->ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    new-instance v2, Lcom/google/api/ResourceDescriptor$History;

    const-string v3, "FUTURE_MULTI_PATTERN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/ResourceDescriptor$History;->FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    new-instance v3, Lcom/google/api/ResourceDescriptor$History;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->$VALUES:[Lcom/google/api/ResourceDescriptor$History;

    new-instance v0, Lcom/google/api/ResourceDescriptor$History$1;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor$History$1;-><init>()V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/api/ResourceDescriptor$History;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/api/ResourceDescriptor$History;->FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/api/ResourceDescriptor$History;->ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/ResourceDescriptor$History;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lcom/google/api/ResourceDescriptor$History$HistoryVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/ResourceDescriptor$History;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/ResourceDescriptor$History;->forNumber(I)Lcom/google/api/ResourceDescriptor$History;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    const-class v0, Lcom/google/api/ResourceDescriptor$History;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor$History;

    return-object p0
.end method

.method public static values()[Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->$VALUES:[Lcom/google/api/ResourceDescriptor$History;

    invoke-virtual {v0}, [Lcom/google/api/ResourceDescriptor$History;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/ResourceDescriptor$History;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/api/ResourceDescriptor$History;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
