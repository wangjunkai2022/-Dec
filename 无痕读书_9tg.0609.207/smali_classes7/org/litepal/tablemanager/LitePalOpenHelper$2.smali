.class public Lorg/litepal/tablemanager/LitePalOpenHelper$2;
.super Ljava/lang/Object;
.source "LitePalOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/tablemanager/LitePalOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/litepal/tablemanager/LitePalOpenHelper;

.field public final synthetic val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;

.field public final synthetic val$newVersion:I

.field public final synthetic val$oldVersion:I


# direct methods
.method public constructor <init>(Lorg/litepal/tablemanager/LitePalOpenHelper;Lorg/litepal/tablemanager/callback/DatabaseListener;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->this$0:Lorg/litepal/tablemanager/LitePalOpenHelper;

    iput-object p2, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    iput p3, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$oldVersion:I

    iput p4, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$newVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    iget v1, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$oldVersion:I

    iget v2, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$2;->val$newVersion:I

    invoke-interface {v0, v1, v2}, Lorg/litepal/tablemanager/callback/DatabaseListener;->onUpgrade(II)V

    return-void
.end method
