.class public Lcom/apk/x10$try;
.super Ljava/lang/Object;
.source "ComicRankFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x10;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$try;->do:Lcom/apk/x10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/x10$try;->do:Lcom/apk/x10;

    .line 2
    iget-object v0, v0, Lcom/apk/x10;->for:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
