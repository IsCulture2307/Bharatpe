.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->j()I

    move-result v2

    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v4, v0

    iput v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    invoke-virtual {p1, v3, v0, v4, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method
