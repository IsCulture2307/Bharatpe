.class public abstract Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;
.super Lorg/apache/xml/security/algorithms/SignatureAlgorithmSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacMD5;,
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacRIPEMD160;,
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA512;,
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA384;,
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA256;,
        Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA1;
    }
.end annotation


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;


# instance fields
.field b:I

.field private e:Ljavax/crypto/Mac;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.algorithms.implementations.IntegrityHmac$IntegrityHmacSHA1"

    invoke-static {v0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->c:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/xml/security/algorithms/SignatureAlgorithmSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->b:I

    iput-boolean v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->f:Z

    invoke-virtual {p0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/security/algorithms/JCEMapper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Created IntegrityHmacSHA1 using "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v2, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v2, v0}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1
    invoke-static {p0}, Lcom/paynimo/android/payment/a;->i(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    move-result-object p0

    .line 2
    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 6
    sget-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    const-string v1, "engineGetJCEAlgorithmString()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(B)V
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public a(Ljava/security/Key;)V
    .locals 5

    .line 8
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.crypto.SecretKey"

    invoke-static {v0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->d:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    :try_start_1
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception when reinstantiating Mac:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iput-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    :goto_0
    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public a(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 9
    invoke-super {p0, p1}, Lorg/apache/xml/security/algorithms/SignatureAlgorithmSpi;->a(Lorg/w3c/dom/Element;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    const-string v0, "HMACOutputLength"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/xml/security/utils/XMLUtils;->b(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Text;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->f:Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "element null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public a([BII)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string p3, "empty"

    invoke-direct {p2, p3, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b([B)Z
    .locals 3

    .line 2
    const-string v0, "HMACOutputLength must not be less than "

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->f:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->b:I

    invoke-virtual {p0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object p1, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->a:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "algorithms.HMACOutputLengthMin"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->b:I

    iput-boolean v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->f:Z

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;->e:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()I
.end method
