.class final Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final replacementAtStart:[Ljava/lang/String;

.field private final replacementBeforeVowel:[Ljava/lang/String;

.field private final replacementDefault:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method private isVowel(C)Z
    .locals 1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getPatternLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->isVowel(C)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    return-object p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s=(%s,%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
