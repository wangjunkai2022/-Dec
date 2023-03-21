.class public Lcom/apk/ds0;
.super Landroidx/appcompat/widget/AppCompatRatingBar;
.source "SkinCompatRatingBar.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:Lcom/apk/as0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lskin/support/appcompat/R$attr;->ratingBarStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/apk/as0;

    invoke-direct {p1, p0}, Lcom/apk/as0;-><init>(Landroid/widget/ProgressBar;)V

    iput-object p1, p0, Lcom/apk/ds0;->do:Lcom/apk/as0;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/apk/as0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ds0;->do:Lcom/apk/as0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/as0;->if()V

    :cond_0
    return-void
.end method
