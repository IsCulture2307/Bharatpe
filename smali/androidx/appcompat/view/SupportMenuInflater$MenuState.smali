.class Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuState"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Landroidx/appcompat/view/SupportMenuInflater;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroidx/core/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->E:Landroidx/appcompat/view/SupportMenuInflater;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->E:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 9

    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->v:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->E:Landroidx/appcompat/view/SupportMenuInflater;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/appcompat/view/SupportMenuInflater;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    :cond_2
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :try_start_0
    sget-object v6, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->c:[Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/view/InflateException;

    const-string v1, "Couldn\'t resolve menu item onClick handler "

    const-string v2, " in class "

    invoke-static {v1, v5, v2}, La/a/a/e/a/k;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->g(Z)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    :try_start_1
    iget-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v5, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->d:Landroidx/core/internal/view/SupportMenuItem;

    if-nez v4, :cond_6

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setExclusiveCheckable"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->e:Ljava/lang/reflect/Method;

    :cond_6
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->e:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v2, Landroidx/appcompat/view/SupportMenuInflater;->e:[Ljava/lang/Class;

    iget-object v1, v1, Landroidx/appcompat/view/SupportMenuInflater;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_8
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    if-lez v0, :cond_9

    if-nez v2, :cond_9

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_a

    instance-of v1, p1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1, v0}, Landroidx/core/internal/view/SupportMenuItem;->a(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->A:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->n:C

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->o:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->a(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->p:C

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->q:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->e(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method
