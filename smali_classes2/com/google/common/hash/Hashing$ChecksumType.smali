.class abstract enum Lcom/google/common/hash/Hashing$ChecksumType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/ImmutableSupplier;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ChecksumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Hashing$ChecksumType;",
        ">;",
        "Lcom/google/common/hash/ImmutableSupplier<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/google/common/hash/Hashing$ChecksumType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/common/hash/Hashing$ChecksumType$1;

    const-string v1, "Hashing.crc32()"

    const-string v2, "CRC_32"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/google/common/hash/Hashing$ChecksumType$2;

    const-string v2, "Hashing.adler32()"

    const-string v4, "ADLER_32"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/hash/Hashing$ChecksumType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/google/common/hash/Hashing$ChecksumType;->a:[Lcom/google/common/hash/Hashing$ChecksumType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/google/common/hash/ChecksumHashFunction;

    invoke-direct {p1, p0, p3}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/hash/ImmutableSupplier;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Hashing$ChecksumType;
    .locals 1

    const-class v0, Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Hashing$ChecksumType;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Hashing$ChecksumType;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->a:[Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-virtual {v0}, [Lcom/google/common/hash/Hashing$ChecksumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method
