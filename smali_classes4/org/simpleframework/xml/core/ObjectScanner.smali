.class Lorg/simpleframework/xml/core/ObjectScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Scanner;


# instance fields
.field public final a:Lorg/simpleframework/xml/core/StructureBuilder;

.field public final b:Lorg/simpleframework/xml/core/ClassScanner;

.field public final c:Lorg/simpleframework/xml/core/Structure;

.field public final d:Lorg/simpleframework/xml/core/Support;

.field public final e:Lorg/simpleframework/xml/core/Detail;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ClassScanner;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->a:Ljava/util/ArrayList;

    new-instance v2, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->b:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object v8, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->d:Lorg/simpleframework/xml/core/Support;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->f()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->g()Z

    move-result v3

    if-eqz v3, :cond_54

    array-length v3, v2

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->c()Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v11, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->b:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v12, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->d:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v10, v5, v11, v12}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    iget-object v5, v10, Lorg/simpleframework/xml/core/SignatureScanner;->a:Lorg/simpleframework/xml/core/SignatureBuilder;

    iget-object v10, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    sget v11, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->a:I

    iget-object v11, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->a:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    array-length v10, v10

    if-ne v10, v12, :cond_7

    new-instance v10, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    iget-object v13, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->b:Ljava/lang/reflect/Constructor;

    if-eqz v12, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v10, v13}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    array-length v12, v12

    if-ne v12, v11, :cond_0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_4

    :cond_1
    new-instance v11, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v11, v9}, Lorg/simpleframework/xml/core/SignatureBuilder;->a(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v10, v9}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->b(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    move v14, v9

    :goto_2
    if-ge v14, v11, :cond_0

    new-instance v15, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v15, v13}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_3
    move-object/from16 v16, v2

    if-ge v9, v12, :cond_5

    invoke-virtual {v10, v9}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->b(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Parameter;

    move/from16 v17, v3

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v10

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v10

    move/from16 v19, v11

    iget-object v11, v15, Lorg/simpleframework/xml/core/Signature;->a:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v11, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v11, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Parameter \'%s\' is a duplicate in %s"

    filled-new-array {v3, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    move/from16 v17, v3

    move-object/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Signature;

    iget-object v5, v3, Lorg/simpleframework/xml/core/Signature;->a:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    iput-object v3, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->c:Lorg/simpleframework/xml/core/Signature;

    :cond_6
    iget-object v5, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 v16, v2

    move/from16 v17, v3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    iput-object v1, v0, Lorg/simpleframework/xml/core/ClassScanner;->b:Lorg/simpleframework/xml/core/ConstructorScanner;

    new-instance v1, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/NamespaceDecorator;->a:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/simpleframework/xml/core/ClassScanner;->a:Lorg/simpleframework/xml/core/NamespaceDecorator;

    iput-object v8, v0, Lorg/simpleframework/xml/core/ClassScanner;->i:Lorg/simpleframework/xml/core/Support;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->d()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v2

    :goto_6
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->a:Lorg/simpleframework/xml/core/NamespaceDecorator;

    if-eqz v2, :cond_17

    iget-object v4, v0, Lorg/simpleframework/xml/core/ClassScanner;->i:Lorg/simpleframework/xml/core/Support;

    if-eqz v1, :cond_a

    iget-object v4, v4, Lorg/simpleframework/xml/core/Support;->c:Lorg/simpleframework/xml/core/DetailExtractor;

    :goto_7
    invoke-virtual {v4, v2}, Lorg/simpleframework/xml/core/DetailExtractor;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v2

    goto :goto_8

    :cond_a
    iget-object v4, v4, Lorg/simpleframework/xml/core/Support;->d:Lorg/simpleframework/xml/core/DetailExtractor;

    goto :goto_7

    :goto_8
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->h()Lorg/simpleframework/xml/NamespaceList;

    move-result-object v4

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v9, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v4

    array-length v5, v4

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v5, :cond_c

    aget-object v10, v4, v9

    iget-object v11, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_c
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/MethodDetail;

    iget-object v5, v4, Lorg/simpleframework/xml/core/MethodDetail;->a:[Ljava/lang/annotation/Annotation;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_d

    aget-object v11, v5, v10

    instance-of v12, v11, Lorg/simpleframework/xml/core/Commit;

    iget-object v13, v4, Lorg/simpleframework/xml/core/MethodDetail;->b:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_e

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->c:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_e

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->c:Lorg/simpleframework/xml/core/Function;

    :cond_e
    instance-of v12, v11, Lorg/simpleframework/xml/core/Validate;

    if-eqz v12, :cond_f

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->d:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_f

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->d:Lorg/simpleframework/xml/core/Function;

    :cond_f
    instance-of v12, v11, Lorg/simpleframework/xml/core/Persist;

    if-eqz v12, :cond_10

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->e:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_10

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->e:Lorg/simpleframework/xml/core/Function;

    :cond_10
    instance-of v12, v11, Lorg/simpleframework/xml/core/Complete;

    if-eqz v12, :cond_11

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->f:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_11

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->f:Lorg/simpleframework/xml/core/Function;

    :cond_11
    instance-of v12, v11, Lorg/simpleframework/xml/core/Replace;

    if-eqz v12, :cond_12

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->g:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_12

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->g:Lorg/simpleframework/xml/core/Function;

    :cond_12
    instance-of v11, v11, Lorg/simpleframework/xml/core/Resolve;

    if-eqz v11, :cond_13

    iget-object v11, v0, Lorg/simpleframework/xml/core/ClassScanner;->h:Lorg/simpleframework/xml/core/Function;

    if-nez v11, :cond_13

    invoke-static {v13}, Lorg/simpleframework/xml/core/ClassScanner;->a(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v11

    iput-object v11, v0, Lorg/simpleframework/xml/core/ClassScanner;->h:Lorg/simpleframework/xml/core/Function;

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_14
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->j:Lorg/simpleframework/xml/Root;

    if-nez v3, :cond_15

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object v3

    iput-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->j:Lorg/simpleframework/xml/Root;

    :cond_15
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->k:Lorg/simpleframework/xml/Order;

    if-nez v3, :cond_16

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v3

    iput-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->k:Lorg/simpleframework/xml/Order;

    :cond_16
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->k()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_6

    :cond_17
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->b:Lorg/simpleframework/xml/Namespace;

    :cond_18
    iput-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    new-instance v9, Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-direct {v0, v7, v8}, Lorg/simpleframework/xml/core/ExpressionBuilder;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->b:Lorg/simpleframework/xml/core/ExpressionBuilder;

    new-instance v1, Lorg/simpleframework/xml/core/ModelAssembler;

    invoke-direct {v1, v0, v7, v8}, Lorg/simpleframework/xml/core/ModelAssembler;-><init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v1, v9, Lorg/simpleframework/xml/core/StructureBuilder;->c:Lorg/simpleframework/xml/core/ModelAssembler;

    new-instance v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->f:Lorg/simpleframework/xml/core/Comparer;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v1, v10}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v1, v10}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->e:Lorg/simpleframework/xml/core/LabelMap;

    iput-object v6, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->g:Lorg/simpleframework/xml/core/Scanner;

    iput-object v7, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->h:Lorg/simpleframework/xml/core/Detail;

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->a:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    new-instance v11, Lorg/simpleframework/xml/core/TreeModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v9, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->e:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->f:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->g:Lorg/simpleframework/xml/core/LabelMap;

    iput-object v6, v9, Lorg/simpleframework/xml/core/StructureBuilder;->h:Lorg/simpleframework/xml/core/Scanner;

    iput-object v8, v9, Lorg/simpleframework/xml/core/StructureBuilder;->i:Lorg/simpleframework/xml/core/Support;

    iput-object v9, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    iput-object v8, v6, Lorg/simpleframework/xml/core/ObjectScanner;->d:Lorg/simpleframework/xml/core/Support;

    iput-object v7, v6, Lorg/simpleframework/xml/core/ObjectScanner;->e:Lorg/simpleframework/xml/core/Detail;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v1, v0, Lorg/simpleframework/xml/core/StructureBuilder;->h:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v0, v0, Lorg/simpleframework/xml/core/StructureBuilder;->c:Lorg/simpleframework/xml/core/ModelAssembler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_b
    iget-object v8, v0, Lorg/simpleframework/xml/core/ModelAssembler;->c:Lorg/simpleframework/xml/core/Detail;

    iget-object v9, v0, Lorg/simpleframework/xml/core/ModelAssembler;->a:Lorg/simpleframework/xml/core/ExpressionBuilder;

    if-ge v5, v4, :cond_1a

    aget-object v11, v3, v5

    invoke-virtual {v9, v11}, Lorg/simpleframework/xml/core/ExpressionBuilder;->a(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v9

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Expression;->z()Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v0, v2, v9}, Lorg/simpleframework/xml/core/ModelAssembler;->b(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_19
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Ordered element \'%s\' references an attribute in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1a
    invoke-interface {v1}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, v1, v4

    invoke-virtual {v9, v5}, Lorg/simpleframework/xml/core/ExpressionBuilder;->a(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v11

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->z()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->w0()Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v11, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Ordered attribute \'%s\' references an element in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1c
    :goto_d
    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->w0()Z

    move-result v12

    if-nez v12, :cond_1d

    iget-object v11, v0, Lorg/simpleframework/xml/core/ModelAssembler;->b:Lorg/simpleframework/xml/stream/Format;

    iget-object v11, v11, Lorg/simpleframework/xml/stream/Format;->c:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v11, v5}, Lorg/simpleframework/xml/stream/Style;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/simpleframework/xml/core/TreeModel;->T(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    invoke-virtual {v0, v2, v11}, Lorg/simpleframework/xml/core/ModelAssembler;->a(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->d()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    iget-object v2, v6, Lorg/simpleframework/xml/core/ObjectScanner;->d:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Support;->b(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->a()Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v4, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v4, v1, v3}, Lorg/simpleframework/xml/core/StructureBuilder;->a(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_f

    :cond_20
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->d()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Support;->d(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->a()Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v3, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v3, v1, v2}, Lorg/simpleframework/xml/core/StructureBuilder;->a(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_10

    :cond_22
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->d:Lorg/simpleframework/xml/core/ClassInstantiator;

    if-nez v2, :cond_3c

    iget-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->a:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    iget-object v3, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    if-nez v3, :cond_3b

    iget-object v3, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->g:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->n()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v8, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Signature;

    new-instance v9, Lorg/simpleframework/xml/core/Signature;

    iget-object v11, v5, Lorg/simpleframework/xml/core/Signature;->b:Ljava/lang/reflect/Constructor;

    iget-object v12, v5, Lorg/simpleframework/xml/core/Signature;->c:Ljava/lang/Class;

    invoke-direct {v9, v12, v11}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Signature;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Parameter;->z()Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c:Lorg/simpleframework/xml/core/LabelMap;

    :goto_13
    invoke-static {v11, v12}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v12

    goto :goto_14

    :cond_24
    invoke-interface {v11}, Lorg/simpleframework/xml/core/Parameter;->C()Z

    move-result v12

    if-eqz v12, :cond_25

    iget-object v12, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->e:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_13

    :cond_25
    iget-object v12, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_13

    :goto_14
    if-eqz v12, :cond_26

    new-instance v13, Lorg/simpleframework/xml/core/CacheParameter;

    invoke-direct {v13, v12, v11}, Lorg/simpleframework/xml/core/CacheParameter;-><init>(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    goto :goto_15

    :cond_26
    move-object v13, v10

    :goto_15
    if-eqz v13, :cond_23

    invoke-virtual {v13}, Lorg/simpleframework/xml/core/CacheParameter;->getKey()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_23

    iget-object v12, v9, Lorg/simpleframework/xml/core/Signature;->a:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v12, v11, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_27
    new-instance v5, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v5, v9}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_28
    iget-object v4, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v5, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->h:Lorg/simpleframework/xml/core/Detail;

    if-nez v4, :cond_2a

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->d()Lorg/simpleframework/xml/core/Signature;

    move-result-object v4

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    if-eqz v4, :cond_29

    new-instance v9, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v9, v4}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    goto :goto_16

    :cond_29
    move-object v9, v10

    :goto_16
    new-instance v4, Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-direct {v4, v8, v9, v5}, Lorg/simpleframework/xml/core/ClassInstantiator;-><init>(Ljava/util/ArrayList;Lorg/simpleframework/xml/core/SignatureCreator;Lorg/simpleframework/xml/core/Detail;)V

    iput-object v4, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    :cond_2a
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/ParameterMap;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->z()Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c:Lorg/simpleframework/xml/core/LabelMap;

    :goto_18
    invoke-static {v4, v8}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v8

    goto :goto_19

    :cond_2c
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->C()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->e:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_18

    :cond_2d
    iget-object v8, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_18

    :goto_19
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_38

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->H()Lorg/simpleframework/xml/core/Contact;

    move-result-object v9

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v9}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-static {v12}, Lorg/simpleframework/xml/core/Support;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    :cond_2e
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-static {v9}, Lorg/simpleframework/xml/core/Support;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    :cond_2f
    invoke-virtual {v9, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->F()[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    array-length v12, v9

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v12, :cond_32

    aget-object v14, v9, v13

    if-ne v14, v11, :cond_30

    goto :goto_1b

    :cond_30
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    goto :goto_1b

    :cond_31
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a

    :cond_32
    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v9

    if-eq v11, v9, :cond_35

    const-string v12, "Annotation does not match %s for \'%s\' in %s"

    if-eqz v11, :cond_34

    if-eqz v9, :cond_34

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_1b

    :cond_33
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v8, v11, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_34
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v8, v11, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_35
    :goto_1b
    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->a()Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->a()Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->f:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v12, v8, v9}, Lorg/simpleframework/xml/core/Comparer;->a(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v12

    if-nez v12, :cond_2b

    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    goto/16 :goto_17

    :cond_36
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Annotation %s does not match %s for \'%s\' in %s"

    filled-new-array {v9, v8, v11, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_37
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Type is not compatible with %s for \'%s\' in %s"

    filled-new-array {v8, v11, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_38
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Parameter \'%s\' does not have a match in %s"

    filled-new-array {v9, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_39
    iget-object v3, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lorg/simpleframework/xml/core/ClassInstantiator;->a:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/ClassInstantiator;->m()Z

    move-result v3

    iget-object v5, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c:Lorg/simpleframework/xml/core/LabelMap;

    iget-object v8, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d:Lorg/simpleframework/xml/core/LabelMap;

    if-eqz v3, :cond_3a

    invoke-virtual {v2, v8}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c(Lorg/simpleframework/xml/core/LabelMap;)V

    invoke-virtual {v2, v5}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->c(Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_3a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v2, v8, v4}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5, v4}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->d(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/ArrayList;)V

    :cond_3b
    iget-object v2, v2, Lorg/simpleframework/xml/core/InstantiatorBuilder;->b:Lorg/simpleframework/xml/core/ClassInstantiator;

    iput-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->d:Lorg/simpleframework/xml/core/ClassInstantiator;

    :cond_3c
    iget-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->h:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v3

    iget-object v4, v1, Lorg/simpleframework/xml/core/StructureBuilder;->f:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->J()[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->H()Lorg/simpleframework/xml/core/Contact;

    move-result-object v11

    array-length v12, v9

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v12, :cond_3d

    aget-object v14, v9, v13

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Contact;->a()Ljava/lang/annotation/Annotation;

    move-result-object v15

    invoke-virtual {v4, v14}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v10

    move-object/from16 p2, v5

    invoke-interface {v14}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v5

    if-ne v10, v5, :cond_3f

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Label;->b()Z

    move-result v5

    invoke-interface {v14}, Lorg/simpleframework/xml/core/Label;->b()Z

    move-result v10

    if-ne v5, v10, :cond_3e

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p2

    const/4 v10, 0x0

    goto :goto_1c

    :cond_3e
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Required must be consistent in %s for %s"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3f
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Inline must be consistent in %s for %s"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_40
    iget-object v5, v1, Lorg/simpleframework/xml/core/StructureBuilder;->b:Lorg/simpleframework/xml/core/ExpressionBuilder;

    const/4 v8, 0x1

    if-eqz v3, :cond_44

    invoke-interface {v3}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v10, :cond_44

    aget-object v12, v9, v11

    invoke-virtual {v5, v12}, Lorg/simpleframework/xml/core/ExpressionBuilder;->a(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14, v8}, Lorg/simpleframework/xml/core/Expression;->S0(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v15

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Expression;->w0()Z

    move-result v14

    iget-object v8, v1, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v14, :cond_41

    invoke-virtual {v8, v15}, Lorg/simpleframework/xml/core/TreeModel;->h0(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v8

    :cond_41
    if-eqz v8, :cond_43

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v13

    invoke-interface {v8, v14}, Lorg/simpleframework/xml/core/Model;->C0(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_42

    goto :goto_1e

    :cond_42
    invoke-interface {v8, v14}, Lorg/simpleframework/xml/core/Model;->A0(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_43

    invoke-interface {v8, v13, v14}, Lorg/simpleframework/xml/core/Model;->d0(ILjava/lang/String;)Lorg/simpleframework/xml/core/Model;

    move-result-object v8

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_43

    :goto_1e
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_1d

    :cond_43
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Ordered element \'%s\' missing for %s"

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_44
    if-eqz v3, :cond_48

    invoke-interface {v3}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v14, 0x0

    :goto_1f
    if-ge v14, v8, :cond_48

    aget-object v9, v3, v14

    invoke-virtual {v5, v9}, Lorg/simpleframework/xml/core/ExpressionBuilder;->a(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lorg/simpleframework/xml/core/Expression;->S0(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v13

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Expression;->w0()Z

    move-result v15

    iget-object v11, v1, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v15, :cond_45

    invoke-virtual {v11, v13}, Lorg/simpleframework/xml/core/TreeModel;->h0(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v11

    :cond_45
    if-eqz v11, :cond_47

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Expression;->w0()Z

    move-result v10

    if-nez v10, :cond_46

    invoke-interface {v11, v9}, Lorg/simpleframework/xml/core/Model;->b0(Ljava/lang/String;)Z

    move-result v10

    goto :goto_20

    :cond_46
    invoke-interface {v11, v13}, Lorg/simpleframework/xml/core/Model;->b0(Ljava/lang/String;)Z

    move-result v10

    :goto_20
    if-eqz v10, :cond_47

    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    :cond_47
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Ordered attribute \'%s\' missing in %s"

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_48
    iget-object v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v3, v0}, Lorg/simpleframework/xml/core/TreeModel;->G0(Ljava/lang/Class;)V

    :cond_49
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->l()Lorg/simpleframework/xml/core/Label;

    move-result-object v5

    const-string v8, "Elements used with %s in %s"

    const-string v9, "Paths used with %s in %s"

    if-eqz v5, :cond_4c

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->N()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->b()Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_21

    :cond_4a
    new-instance v1, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4b
    new-instance v1, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4c
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Scanner;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v2

    iput-boolean v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->l:Z

    :cond_4d
    :goto_21
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->l()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->N()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->D()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v5

    invoke-interface {v5}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v10, Ljava/lang/String;

    if-eq v5, v10, :cond_4e

    goto :goto_22

    :cond_4e
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    const-string v3, "Illegal entry of %s with text annotations on %s in %s"

    filled-new-array {v5, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_4f
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_50
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->b()Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_23

    :cond_51
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_52
    :goto_23
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    if-nez v0, :cond_53

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    new-instance v1, Lorg/simpleframework/xml/core/Structure;

    iget-object v2, v0, Lorg/simpleframework/xml/core/StructureBuilder;->d:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v3, v0, Lorg/simpleframework/xml/core/StructureBuilder;->k:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v4, v0, Lorg/simpleframework/xml/core/StructureBuilder;->j:Lorg/simpleframework/xml/core/Label;

    iget-boolean v0, v0, Lorg/simpleframework/xml/core/StructureBuilder;->l:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/simpleframework/xml/core/Structure;-><init>(Lorg/simpleframework/xml/core/ClassInstantiator;Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Label;Z)V

    iput-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    :cond_53
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->a:Lorg/simpleframework/xml/core/StructureBuilder;

    return-void

    :cond_54
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Can not construct inner %s"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final E()Lorg/simpleframework/xml/core/Decorator;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->a:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object v0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->e:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Detail;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Lorg/simpleframework/xml/core/Instantiator;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Structure;->a:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    iget-boolean v0, v0, Lorg/simpleframework/xml/core/Structure;->e:Z

    return v0
.end method

.method public final d()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->b:Lorg/simpleframework/xml/core/ConstructorScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ConstructorScanner;->c:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public final e()Lorg/simpleframework/xml/core/Section;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    new-instance v1, Lorg/simpleframework/xml/core/ModelSection;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Structure;->d:Lorg/simpleframework/xml/core/Model;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Model;)V

    return-object v1
.end method

.method public final f()Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Structure;->b:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public final g()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->h:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->e:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Detail;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->k:Lorg/simpleframework/xml/Order;

    return-object v0
.end method

.method public final getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->b:Lorg/simpleframework/xml/core/ConstructorScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ConstructorScanner;->b:Lorg/simpleframework/xml/core/ParameterMap;

    return-object v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->e:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->g:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public final i(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->j:Lorg/simpleframework/xml/Root;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Lorg/simpleframework/xml/Version;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Structure;->b:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->H()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    const-class v1, Lorg/simpleframework/xml/Version;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Version;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final k()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->e:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public final l()Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->c:Lorg/simpleframework/xml/core/Structure;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Structure;->c:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public final m()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->d:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->b:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ConstructorScanner;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final o()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->f:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public final p()Lorg/simpleframework/xml/core/Function;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->b:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassScanner;->c:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method
