.class public Lcom/apk/vq0;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SkinMaterialCoordinatorLayout.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:Lcom/apk/mr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/apk/mr0;

    invoke-direct {p1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apk/vq0;->do:Lcom/apk/mr0;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/vq0;->do:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    :cond_0
    return-void
.end method
