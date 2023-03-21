.class public Lcom/apk/s0$for;
.super Ljava/lang/Object;
.source "ReadTimerHelper.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s0;->goto(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/apk/s0;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/s0$for;->do:Landroid/content/Context;

    iput p3, p0, Lcom/apk/s0$for;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s0$for;->do:Landroid/content/Context;

    iget v1, p0, Lcom/apk/s0$for;->if:I

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->p(Landroid/content/Context;I)V

    return-void
.end method
