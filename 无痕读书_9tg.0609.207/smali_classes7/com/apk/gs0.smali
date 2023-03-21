.class public Lcom/apk/gs0;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SkinCompatSeekBar.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:Lcom/apk/hs0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lskin/support/appcompat/R$attr;->seekBarStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/apk/hs0;

    invoke-direct {p1, p0}, Lcom/apk/hs0;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Lcom/apk/gs0;->do:Lcom/apk/hs0;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/apk/hs0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/gs0;->do:Lcom/apk/hs0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/hs0;->if()V

    :cond_0
    return-void
.end method
