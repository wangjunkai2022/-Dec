.class public Lcom/apk/v9$do;
.super Ljava/lang/Object;
.source "BookViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/v9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v9;


# direct methods
.method public constructor <init>(Lcom/apk/v9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v9$do;->do:Lcom/apk/v9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v9$do;->do:Lcom/apk/v9;

    .line 2
    iget-object v0, v0, Lcom/apk/v9;->import:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
