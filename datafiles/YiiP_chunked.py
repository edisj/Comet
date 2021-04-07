import MDAnalysis as mda

top = '/oasis/projects/nsf/azs119/edisj/Comet/datafiles/YiiP_system.pdb'
traj = '/oasis/projects/nsf/azs119/edisj/Comet/datafiles/YiiP_system_9ns_center100x.h5md'

u = mda.Universe(top, traj)

with mda.Writer("YiiP_system_9ns_center100x_contiguous.h5md",
                n_atoms=u.trajectory.n_atoms,
                n_frames=u.trajectory.n_frames,
                positions=True) as W:
    for ts in u.trajectory:
        W.write(u)
