.class public Lcom/apk/pa0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartKeyboardManager.java"


# instance fields
.field public final synthetic do:Lcom/apk/za0;


# direct methods
.method public constructor <init>(Lcom/apk/za0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pa0;->do:Lcom/apk/za0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/pa0;->do:Lcom/apk/za0;

    .line 2
    iget-object p1, p1, Lcom/apk/za0;->case:Landroid/view/View;

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
